//
//  SafeSubscriptCollection.swift
//  Swift-Extension
//
//  Created by Robin on 3/4/16.
//  Copyright © 2016 Robin. All rights reserved.
//


extension CollectionType where Index: Comparable {
    subscript (safe index: Index) -> Generator.Element? {
        guard startIndex <= index && index < endIndex else {
            return nil
        }
        return self[index]
    }
}
