//
//  emailValidator.swift
//  GenesisKit
//
//  Created by Kevin A. Hoogheem on 10/25/14.
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
	emailValidator validates emails
*/
@objc public class emailValidator : NSObject, Validator {
	public var input: String?
	
	public func validateWithError(error: NSErrorPointer) -> Bool {
//		let emailRegEx = "[A-Z0-9a-z._%+-#]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
		let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]"
		let seperatorSet = NSCharacterSet(charactersInString:"@")

		let goodEmailError = NSError(domain: "com.GenesisKit", code: 200, userInfo: [:])
		let badEmailError = NSError(domain: "com.GenesisKit", code: 404, userInfo: ["description": "Email is not valid"])

		var emailParts: [String] = input!.componentsSeparatedByCharactersInSet(seperatorSet).filter({$0 != ""})

//		println("Email: \(emailParts[1])")
		//TODO: user Reachability to see if domain is a vaild one?
		
		if (input != nil) {
			NSLog("asfasdf")
			let range = input!.rangeOfString(emailRegEx, options:.RegularExpressionSearch)
			let result = range != nil ? true : false
			
			if error != nil {
				if (result) {
					error.memory = goodEmailError
				}else {
					error.memory = badEmailError
				}
			}

			return result
		}
		
		if error != nil {
			error.memory = badEmailError
		}

		return false
	}
}