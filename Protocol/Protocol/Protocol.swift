//
//  Protocol.swift
//  Protocol
//
//  Created by Mac on 01/12/18.
//  Copyright © 2018 pradnya. All rights reserved.
//

import Foundation
@objc protocol operation {
    func addition()
    func subtraction()
    func multiplication()
    func division()

    @objc optional
    func square()
    func cube()
}

protocol toggle {
    mutating func changeStatus()
 }
