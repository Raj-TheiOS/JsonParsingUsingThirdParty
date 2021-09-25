//
//  JsonModel.swift
//  JsonParsingUsingThirdParty
//
//  Created by Raj on 19/06/17.
//  Copyright © 2017 Raj. All rights reserved.
//

import Foundation

struct JsonModel{
    var artistName: String = ""
    var trackCensoredName: String = ""
    var artworkUrl100:String = ""
    var artistId:String = ""
    var collectionCensoredName:String = ""
    var country:String = ""
    var primaryGenreName:String = ""
    
    init() {
        
    }
    init(json:JSON) {
        artistName = json["artistName"].stringValue
        trackCensoredName = json["trackCensoredName"].stringValue
        artworkUrl100 = json["artworkUrl100"].stringValue
        collectionCensoredName = json["collectionCensoredName"].stringValue
        artistId = json["artistId"].stringValue
        country = json["country"].stringValue
        primaryGenreName = json["primaryGenreName"].stringValue
    }
}
