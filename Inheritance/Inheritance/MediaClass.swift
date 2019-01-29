//
//  MediaClass.swift
//  Inheritance
//
//  Created by Mac on 03/12/18.
//  Copyright © 2018 pradnya. All rights reserved.
//

import Foundation

class Media {
    var name = ""
    
    init(name : String){
        self.name  = name
    }
    func get(){
        print("Name is \(name)")
    }
}
