//
//  TableViewController.swift
//  JsonParsingUsingThirdParty
//
//  Created by Raj on 19/06/17.
//  Copyright © 2017 Raj. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    @IBOutlet var artistName:UILabel!
    @IBOutlet var trackCensoredName:UILabel!
    @IBOutlet var artistId:UILabel!
    @IBOutlet var collectionCensoredName:UILabel!
    @IBOutlet var country:UILabel!
    @IBOutlet var imageview:UIImageView!
    @IBOutlet var primaryGenreName: UILabel!
    
   var modelData = JsonModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.tableFooterView = UIView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        artistName.text = "ArtistName :-"
         + modelData.artistName
        trackCensoredName.text = "TrackCensoredName :-" + modelData.trackCensoredName
        artistId.text =  "ArtistId :-" + modelData.artistId
        collectionCensoredName.text = "CollectionCensoredName :-" +  modelData.collectionCensoredName
        country.text = "Country :-" + modelData.country
        primaryGenreName.text = "primaryGenreName :-" + modelData.primaryGenreName
        imageview.kf.setImage(with: URL(string: modelData.artworkUrl100))
    }
    
}
