//
//  ViewController.swift
//  JsonParsingUsingThirdParty
//
//  Created by Raj on 19/06/17.
//  Copyright © 2017 Raj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var arrayData = [JsonModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        jsonParsing()
    }
    
    func jsonParsing(){
        let url = URL(string: "https://itunes.apple.com/search?media=music&term=bollywood")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            guard let data = data else{return}
            do{
                let json = try JSON(data:data)
                let results = json["results"]
                print(results)
                
                for arr in results.arrayValue{
                    self.arrayData.append(JsonModel(json: arr))
                }
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                print(self.arrayData)
            }
            catch{
                print(error.localizedDescription)
            }
        }.resume()
    }
}

extension ViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell" ) as! TableViewCell
        cell.lblArtist.text = "Artist Name: \(arrayData[indexPath.row].artistName)"
        cell.lblTrack.text = "Censor Name: \(arrayData[indexPath.row].trackCensoredName)"
        cell.img.kf.setImage(with: URL(string: arrayData[indexPath.row].artworkUrl100))
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let DetailVC = self.storyboard?.instantiateViewController(withIdentifier: "detail") as! TableViewController
        DetailVC.modelData = arrayData[indexPath.row]
        self.navigationController?.pushViewController(DetailVC, animated: true)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
}
























