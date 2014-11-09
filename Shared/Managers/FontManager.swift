//
//  FontManager.swift
//  GenesisKit
//
//  Created by Kevin A. Hoogheem on 10/24/14.
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

#if os(iOS)
	import UIKit
#elseif os(OSX)
	import Cocoa
#endif



/**
  Manager class for Fonts - This is not useable in Objc due to the use of typealias. You would have to do another wrapper around it.
*/
public class FontManager {
	
	/**
	Creates a Font with the standard type of given size. On iOS if user has accessability set it will return a standardBold type of the given size.
	
	You can Override the StandardFont using DefaultsManager.set("GenesisKit.standardFontName", value: "Helvetica") for example
	 
	:param: size The Size of the Font to create
	:returns: Font of the standard type in the given `size`
	*/
	public class func standardFontWithSize(size: CGFloat) -> GKFont {
		if let stdFont = self.standardFontName {
			return GKFont(name: stdFont, size: size)!
		}
		return GKFont.systemFontOfSize(size)
	}
	
	/**
	Creates a Font with the bold type of given size.
	
	You can Override the StandardBoldFont using DefaultsManager.set("GenesisKit.standardBoldFontName", value: "Helvetica-Bold") for example

	:param: size The Size of the Font to create
	:returns: Font of the standard bold type in the given `size`
	*/
	public class func standardBoldFontWithSize(size: CGFloat) -> GKFont {
		if let stdBldFont = self.standardBoldFontName {
			return GKFont(name: stdBldFont, size: size)!
		}

		return GKFont.boldSystemFontOfSize(size)
	}
	
	
	//MARK: Private
	private class var standardFontName: String? {
		
		#if os(iOS)
			var accessibilityFont:String? {
				if IOS8 {
					if UIAccessibilityIsBoldTextEnabled() {
						return self.standardBoldFontName
					}
				}
				return nil
			}
			
			#elseif os(OSX)
			let accessibilityFont = nil
		#endif
		
		//Lets check if they set a standardFont in Defaults Manger..
		if let stdFont = DefaultsManager.get("GenesisKit.standardFontName") as? String {
			if accessibilityFont != nil {
				return accessibilityFont!
			}
			return stdFont
		}
		
		//Ok no font was set in Defaults Manager.. Lets return our Default
		if accessibilityFont != nil {
			return accessibilityFont!
		}
		
		return nil
	}
	
	private class var standardBoldFontName: String? {
		//Lets check if they set a standardBoldFont in Defaults Manger..
		if let stdBoldFont = DefaultsManager.get("GenesisKit.standardBoldFontName") as? String {
			return stdBoldFont
		}
		
		return nil
	}

	
}
