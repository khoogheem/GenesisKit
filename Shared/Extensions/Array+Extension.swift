//
//  Array+Extension.swift
//  GenesisKit
//
//  Created by Kevin A. Hoogheem on 2/28/15.
//  Copyright (c) 2015 Kevin A. Hoogheem. All rights reserved.
//

import Foundation

/** Extension Extends Array

*/
extension Array {
	
    /**
    Removes the specified object from Array
    
    :param: object The object to remove from Array
    */
    mutating func removeObject<U: Equatable>(object: U) {
        var index: Int?
        for (idx, objectToCompare) in enumerate(self) {
            if let to = objectToCompare as? U {
                if object == to {
                    index = idx
                }
            }
        }
        
        if(index != nil) {
            self.removeAtIndex(index!)
        }
    }

}
