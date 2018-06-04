//
//  Array+.swift
//  Concentration
//
//  Created by YooSeunghwan on 2018/05/31.
//  Copyright © 2018年 kotsuya. All rights reserved.
//

import Foundation

extension Array {
    mutating func shuffle() {
        for i in 0..<self.count {
            let j = Int(arc4random_uniform(UInt32(self.indices.last!)))
            if i != j {
                self.swapAt(i, j)
            }
        }
    }
    
    var shuffled: Array {
        var copied = Array<Element>(self)
        copied.shuffle()
        return copied
    }
}
