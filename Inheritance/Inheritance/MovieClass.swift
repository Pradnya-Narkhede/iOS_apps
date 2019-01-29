//
//  MovieClass.swift
//  Inheritance
//
//  Created by Mac on 03/12/18.
//  Copyright © 2018 pradnya. All rights reserved.
//

import Foundation

class Movie : Media {
    var director : String
    init(name : String,director : String){
        self.director = director
        super.init(name : name)
    }
    func getm(){
        print("Director = \(director)")
        super.get()
    }
}
