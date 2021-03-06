//
//  ComicsCharacter.swift
//  marvelproj
//
//  Created by Andre Nogueira on 07/05/18.
//  Copyright © 2018 Andre Nogueira. All rights reserved.
//

import Foundation
//import ObjectMapper

struct ComicsCharacter{
    var collectionURI: String?
    var available: Int?
}

extension ComicsCharacter{
    init?(json: [String: Any]) {
        guard let collectionURI = json["collectionURI"] as? String,
            let available = json["available"] as? Int
            else{
                return nil
        }
        
        self.collectionURI = collectionURI
        self.available = available
    }
}
