//
//  MutipleSubscriptArray.swift
//  Swift-Extension
//
//  Created by Robin on 3/4/16.
//  Copyright © 2016 Robin. All rights reserved.
//


extension Array {
    subscript (i1: Int, i2: Int, rest: Int...) -> [Element] {
        get {
            var result: [Element] = [self[i1], self[i2]]
            for index in rest {
                result.append(self[index])
            }
            return result
        }
        set(values) {
            for (index, value) in zip([i1, i2] + rest, values) {
                self[index] = value
            }
        }
    }
}
