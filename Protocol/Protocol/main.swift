//
//  main.swift
//  Protocol
//
//  Created by Mac on 30/11/18.
//  Copyright © 2018 pradnya. All rights reserved.
//

import Foundation


var e : onoff
e = .on
print("Status \(e)")
e.changeStatus()
print("Status \(e)")

var o = classone()
o.addition()
o.subtraction()
o.multiplication()
o.division()
print(o.display())
