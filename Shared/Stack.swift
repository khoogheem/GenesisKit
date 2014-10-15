//
//  Stack.swift
//  GenesisKit
//
//  Created by Kevin A. Hoogheem on 10/14/14.
//
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
struct Stack<T: Equatable> {
	private var items = [T]()
	
	/** Provides the top most object in the `Stack` */
	var topItem: T? {
		return items.isEmpty ? nil : items[items.count - 1]
	}
	
	/** Provides the current count of objects in `Stack` */
	var count: Int {
		return items.count
	}
	
	/** Provides the first object in `Stack` */
	var firstObject: T? {
		return items.first
	}
	
	/** Provides the last object in `Stack` */
	var lastObject: T? {
		return items.last
	}

	/** 
	 Pushes the passed `item` on top of the `Stack`
	 
	 :param: item The Item you are pushing onto the stack
	 */
	mutating func push(item: T) {
		items.append(item)
	}
	
	/**
	Removes the top most item from the `Stack` and returns it
	
	:returns: The top most object on the `Stack`
	*/
	mutating func pop() -> T {
		return items.removeLast()
	}
	
	/**
	Returns the object at the given `index` in the `Stack`
	
	:returns: The top most object on the `Stack`
	*/
	func objectAtIndex(index: Int) -> T {
		return items[index]
	}
	
	/**
	Returns the `index` of the object in the `Stack`
	
	:returns: An optional Int value of the object in the `Stack`
	*/
	func indexOfObject(object:T) -> Int? {
		for i in 0..<items.endIndex {
			if items[i] == object {
				return i
			}
		}
		return nil
	}
	
}

//MARK: Extensions

extension Stack : SequenceType {
	func generate() -> genericGenerator<T> {
		return genericGenerator( items: items[0..<items.endIndex] )
	}
}

