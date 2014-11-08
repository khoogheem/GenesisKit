//
//  AutoComplete.swift
//  GenesisKit
//
//  Created by Kevin A. Hoogheem on 11/8/14.
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


/**
 Method to take an array of Strings and provide an autocomplete array of strings
 */
@objc public class AutoComplete {
	private lazy var candidates = [String]()
	
	/**
	 Creates a AutoComplete Objct with a given array of Strings
	
	 :param: candidates An Array of Strings
	 */
	public init (candidates: [String]) {
		self.candidates = candidates
		sort(&self.candidates)
	}
	
	
	/**
	 Provides an Array of Suggested Strings from the given string.
	 
	 Usage: Array of ["Bob", "Bill", "Frank"] - root passed in is B will return ["Bob", "Bill"]
	
	 :param: root The string you are evaluating
	 */
	public func getSuggestions(root:String) -> [String] {

		if countElements(root) == 0 {
			return candidates
		}
		
		let startPredicate = NSPredicate(format: "SELF BEGINSWITH[c] %@", root)!
		let filteredArray = candidates.filter { startPredicate.evaluateWithObject($0) };
		
		return	filteredArray
	}
}