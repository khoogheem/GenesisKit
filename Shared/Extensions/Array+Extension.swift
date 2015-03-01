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
	Provides the index of the object
	
	:param: object The object to find the Index of
	:returns: The index
	*/
	func indexOfObject(object : AnyObject) -> Int {
		return self.indexOfObject(object)
	}
	
	/**
	Removes the specified object from Array
	
	:param: object The object to remove from Array
	*/
	mutating func removeObject(object : AnyObject) {
		for var index = self.indexOfObject(object); index != NSNotFound; index = self.indexOfObject(object) {
			self.removeAtIndex(index)
		}
	}

}
