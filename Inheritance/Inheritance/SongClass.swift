//
//  SongClass.swift
//  Inheritance
//
//  Created by Mac on 03/12/18.
//  Copyright © 2018 pradnya. All rights reserved.
//

import Foundation
class Song : Media {
    var artist : String
    init(name : String,artist : String){
        self.artist = artist
        super.init(name : name)
    }
    func gets(){
        print("name = \(name) Director = \(artist)")
        super.get()
    }
}
