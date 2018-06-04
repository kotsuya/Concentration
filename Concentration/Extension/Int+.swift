//
//  Int+.swift
//  Concentration
//
//  Created by YooSeunghwan on 2018/05/31.
//  Copyright © 2018年 kotsuya. All rights reserved.
//

import Foundation

extension Int {
    var arc4random: Int {
        if self > 0 {
            return Int(arc4random_uniform(UInt32(self)))
        } else if self < 0 {
            return -Int(arc4random_uniform(UInt32(abs(self))))
        } else {
            return 0
        }
    }
}
