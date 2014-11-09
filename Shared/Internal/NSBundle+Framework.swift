//
//  NSBundle+Framework.swift
//  GenesisKit
//
//  Created by Kevin A. Hoogheem on 10/26/14.
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
	private let kGenesisKitBundleName = "net.hoogheem.GenesisKitIOS"
#elseif os(OSX)
	private let kGenesisKitBundleName = "net.hoogheem.GenesisKitOSX"
#endif

/**
	Internal Extensions of NSBundle Class to get the Framework Bundle
*/
internal extension NSBundle {

	/**
	The Frameworks Bundle

	:returns: NSBundle for the framework
	*/
	class func frameworkBundle() -> NSBundle {
		return NSBundle(identifier: kGenesisKitBundleName)!
	}

	/**
	Provides a Bundle for localization strings.  Looks first in mainBundle for any strings file overrides

	:Usage: NSLocalizedString("Costa Rica", tableName: "GenesisKit.Countries", bundle: NSBundle.localizationBundle("GenesisKit.Countries"), value: "Costa Rica", comment: "Country: Costa Rica")

	:param: stringsFile The String File to find localalization for
	
	:returns: NSBundle - MainBundle if strings are found otherwise will just default to frameworks bundle
	*/
	class func localizationBundle(stringsFile: String) -> NSBundle  {
		
		let currentLang:String = NSLocale.autoupdatingCurrentLocale().objectForKey(NSLocaleLanguageCode) as String
		let region = NSLocale.autoupdatingCurrentLocale().localeIdentifier
		
		let regionFile = "\(region).lproj/\(stringsFile)"
		let langFile = "\(currentLang).lproj/\(stringsFile)"
		var useMain = false
		
		//Lets check if any of the Strings files are there.. if so we prefer to use the Main Bundle..
		//Means someone wants to override what we are doing
		
		//Lets Check if the Main Bundle.. not in proj folder
		if let resoruce = NSBundle.mainBundle().pathForResource(stringsFile, ofType: "strings"){
			useMain = true
		}
		
		//Lets Check if the Main Bundle.. lang only (en)
		if let resoruce = NSBundle.mainBundle().pathForResource(langFile, ofType: "strings"){
			useMain = true
		}
		
		//Lets Check if the Main Bundle.. lang_Regions (en_US)
		if let resoruce = NSBundle.mainBundle().pathForResource(regionFile, ofType: "strings"){
			useMain = true
		}
		
		return useMain ? NSBundle.mainBundle() : NSBundle.frameworkBundle()
	}

}
