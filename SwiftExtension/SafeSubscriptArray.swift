//
//  SafeSubscriptArray.swift
//  Swift-Extension
//
//  Created by Robin on 3/4/16.
//  Copyright © 2016 Robin. All rights reserved.
//

extension Array {
    subscript (safe index: Int) -> Element? {
        return (0 ..< count).contains(index) ? self[index] : nil
    }
}
