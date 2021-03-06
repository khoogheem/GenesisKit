//
//  NSMutableData+Extension.swift
//  GenesisKit
//
//  Created by Kevin A. Hoogheem on 2/28/15.
//  Copyright (c) 2015 Kevin A. Hoogheem. All rights reserved.
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

/** Extension Extends NSMutableData

*/
extension NSMutableData {
    
	/**
	Appends a byte to NSMutableData
	
	:param: byte A Byte to append to the NSMutableData
	*/
	func appendByte(var byte: UInt8) {
		self.appendBytes(&byte, length: 1)
	}
}


extension NSData {
	
	/**
	For Given NSData it will return back a byte array
	
	:returns: An UInt8 Byte Array
	*/
	func toByteArray() -> [UInt8] {
		let pointer = UnsafePointer<UInt8>(self.bytes)
		let count = self.length
		
		// Get our buffer pointer and make an array out of it
		let buffer = UnsafeBufferPointer<UInt8>(start:pointer, count:count)
		let byteArray = [UInt8](buffer)
		
		return byteArray
	}
	
}
