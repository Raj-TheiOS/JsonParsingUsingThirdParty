//
//  TableViewCell.swift
//  JsonParsingUsingThirdParty
//
//  Created by Raj on 19/06/17.
//  Copyright © 2017 Raj. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var lblArtist: UILabel!
    @IBOutlet weak var lblTrack: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
