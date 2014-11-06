//
//  Stack.swift
//  GenesisKit
//
//  Created by Kevin A. Hoogheem on 10/14/14.
//  Copyright (c) 2014 Kevin A. Hoogheem. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.


import Foundation


/** Stack is a simple implimentation of a Stack.
 
 Inspired by the WWDC 2014 Advanced Swift talk.

 It can hold any type of object.
 */
public struct Stack<T: Equatable> {
	private var items = [T]()
	
	public init () {
		
	}
	
	/** Provides the top most object in the `Stack` */
	public var topItem: T? {
		return items.isEmpty ? nil : items[items.count - 1]
	}
	
	/** Provides the current count of objects in `Stack` */
	public var count: Int {
		return items.count
	}
	
	/** Provides the first object in `Stack` */
	public var firstObject: T? {
		return items.first
	}
	
	/** Provides the last object in `Stack` */
	public var lastObject: T? {
		return items.last
	}

	/** 
	 Pushes the passed `item` on top of the `Stack`
	 
	 :param: item The Item you are pushing onto the stack
	 */
	public mutating func push(item: T) {
		items.append(item)
	}
	
	/**
	Removes the top most item from the `Stack` and returns it
	
	:returns: The top most object on the `Stack`
	*/
	public mutating func pop() -> T {
		return items.removeLast()
	}
	
	/**
	Returns the object at the given `index` in the `Stack`
	
	:param: index - The index of the object in the Stack
	:returns: The optional object in the `Stack` at the given `index`
	*/
	public func objectAtIndex(index: Int) -> T? {
		if index < 0 || index >= items.count {
			return nil
		}
		return items[index]
	}
	
	/**
	Returns the `index` of the object in the `Stack`
	
	:param: object - The object in the Stack
	:returns: An optional Int value of the object in the `Stack`
	*/
	public func indexOfObject(object:T) -> Int? {
		for i in 0..<items.endIndex {
			if items[i] == object {
				return i
			}
		}
		return nil
	}
	
	/** 
	 Removes all the objects from the Stack
	 */
	public mutating func removeAll() {
		items.removeAll(keepCapacity: false)
	}
	
	//MARK: Index Subscript
	/**
	Returns the object at the given subscript `index` in the `Stack`
	
	:param: index - The index of the object in the Stack
	:returns: The optional object in the `Stack` at the given `index`
	*/
	public subscript (index:Int) -> T? {
		return self.objectAtIndex(index)?
	}
	
	//MARK: Range Subscript
	/**
	Returns the range of objects in the `Stack`
	
	:param: range - The range of the objects in the Stack
	:returns: The optional Array of ojects in the `Stack`
	*/
	public subscript (range: Range<Int>) -> [T]? {
		if range.startIndex < 0 || range.endIndex > self.count {
			return nil
		}
		return Array(items[range])
	}


}

//MARK: Extensions

extension Stack : SequenceType {
	public func generate() -> genericGenerator<T> {
		return genericGenerator( items: items[0..<items.endIndex] )
	}
}

