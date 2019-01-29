//
//  classtwo.swift
//  Protocol
//
//  Created by Mac on 30/11/18.
//  Copyright © 2018 pradnya. All rights reserved.
//

import Foundation

 enum onoff : toggle {
    case on, off
    mutating func changeStatus(){
        switch self {
        case .on :
           self = .off
        case .off :
           self = .on
    
        }
 }
}
