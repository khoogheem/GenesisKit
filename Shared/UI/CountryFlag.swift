//
//  CountryFlag.swift
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
	import UIKit
#elseif os(OSX)
	import Cocoa
#endif

/**
	A Helper Object for retrieval of a Country Flag

	***Does not support Objective-C****
*/
public class CountryFlag {
	/**
	Defines the Size of the Country Flag
	*/
	public enum CountyFlagSize:Int {
		/** 64px Size Flag */
		case ExtraLarge = 64
		/** 48px Size flag */
		case Large = 48
		/** 32px Size flag */
		case Normal = 32
		/** 24px Size flag */
		case Small = 24
		/** 16px Size flag */
		case ExtraSmall = 16
	}
	
	//MARK: Functions
	/**
	 The Offical GenesisKit Country Flag for the Countries ISO_Alpha2 code.
	 
	 :param: alpha_2 The ISO_Alpha2 code for the country
	 :param: size (default .Normal) The size of the flag you wish to return
	 :param: shiny (default false) If true will return a glossy verison of the flag otherwise it returns a flat image
	 :returns: The GKImage (either a UIImage or NSImage) of the Countries Flag
	 
	 :see: CountyFlagSize
	 */
	public class func imageFor(alpha_2: String, size: CountyFlagSize = CountyFlagSize.Normal, shiny: Bool = false) -> GKImage {
		//TODO: Will use something later to change alpha3 to alpha2 visversa
		// Lets for now check if alpha_2 is really a Alpha2
		assert(countElements(alpha_2) == 2, "Two shall be the number thou shalt count, and the number of the counting shall be Two")

		return getImage(alpha_2.uppercaseString, size: size, shiny: shiny)
	}
	
	/**
	The Offical GenesisKit Country Flag for the Olympics.
	
	:param: size (default .Normal) The size of the flag you wish to return
	:param: shiny (default false) If true will return a glossy verison of the flag otherwise it returns a flat image
	:returns: The GKImage (either a UIImage or NSImage) of the Olympics
	
	:see: CountyFlagSize
	*/
	public class func olympicFlag(size: CountyFlagSize = CountyFlagSize.Normal, shiny: Bool = false) -> GKImage {
		return getImage(kCountryFlagFlagOlympics, size: size, shiny: shiny)

//		let filetype = "png"
//		var flagDir = kCountryFlagFlatDirectory
//		if (shiny) {
//			flagDir = kCountryFlagShinyDirectory
//		}
//		let fileName = "\(flagDir)/\(size.rawValue)/\(kCountryFlagFlagOlympics)"
//		let frameworkBundle = NSBundle.frameworkBundle()
//		println("fi: \(fileName)")
//
//		//No need to check for nil as wek now the Olympic flag is there
//		let resoruce = frameworkBundle.pathForResource(fileName, ofType: "png")
//		println(resoruce)
//		return GKImage(contentsOfFile:resoruce!)!
	}
	
	/**
	The Offical GenesisKit Country Flag for NATO.
	
	:param: size (default .Normal) The size of the flag you wish to return
	:param: shiny (default false) If true will return a glossy verison of the flag otherwise it returns a flat image
	:returns: The GKImage (either a UIImage or NSImage) of NATO
	
	:see: CountyFlagSize
	*/
	public class func natoFlag(size: CountyFlagSize = CountyFlagSize.Normal, shiny: Bool = false) -> GKImage {
		return getImage(kCountryFlagFlagNATO, size: size, shiny: shiny)
	}

	/**
	The Offical GenesisKit Country Flag for the UN.
	
	:param: size (default .Normal) The size of the flag you wish to return
	:param: shiny (default false) If true will return a glossy verison of the flag otherwise it returns a flat image
	:returns: The GKImage (either a UIImage or NSImage) of the UN
	
	:see: CountyFlagSize
	*/
	public class func unitedNationsFlag(size: CountyFlagSize = CountyFlagSize.Normal, shiny: Bool = false) -> GKImage {
		return getImage(kCountryFlagFlagUnitedNations, size: size, shiny: shiny)
	}
	
	/**
	The Offical GenesisKit Country Flag for England.
	
	:param: size (default .Normal) The size of the flag you wish to return
	:param: shiny (default false) If true will return a glossy verison of the flag otherwise it returns a flat image
	:returns: The GKImage (either a UIImage or NSImage) of England
	
	:see: CountyFlagSize
	*/
	public class func englandFlag(size: CountyFlagSize = CountyFlagSize.Normal, shiny: Bool = false) -> GKImage {
		return getImage(kCountryFlagFlagEngland, size: size, shiny: shiny)
	}

	/**
	The Offical GenesisKit Country Flag for The Commonwealth.
	
	:param: size (default .Normal) The size of the flag you wish to return
	:param: shiny (default false) If true will return a glossy verison of the flag otherwise it returns a flat image
	:returns: The GKImage (either a UIImage or NSImage) of the Commonwealth
	
	:see: CountyFlagSize
	*/
	public class func commonwealthFlag(size: CountyFlagSize = CountyFlagSize.Normal, shiny: Bool = false) -> GKImage {
		return getImage(kCountryFlagFlagCommonWealth, size: size, shiny: shiny)
	}
	
	/**
	The Offical GenesisKit Country Flag for Scotland.
	
	:param: size (default .Normal) The size of the flag you wish to return
	:param: shiny (default false) If true will return a glossy verison of the flag otherwise it returns a flat image
	:returns: The GKImage (either a UIImage or NSImage) of Scotland
	
	:see: CountyFlagSize
	*/
	public class func scotlandFlag(size: CountyFlagSize = CountyFlagSize.Normal, shiny: Bool = false) -> GKImage {
		return getImage(kCountryFlagFlagScotland, size: size, shiny: shiny)
	}

	/**
	The Offical GenesisKit Country Flag for Wales.
	
	:param: size (default .Normal) The size of the flag you wish to return
	:param: shiny (default false) If true will return a glossy verison of the flag otherwise it returns a flat image
	:returns: The GKImage (either a UIImage or NSImage) of Wales
	
	:see: CountyFlagSize
	*/
	public class func walesFlag(size: CountyFlagSize = CountyFlagSize.Normal, shiny: Bool = false) -> GKImage {
		return getImage(kCountryFlagFlagWales, size: size, shiny: shiny)
	}

	/**
	The Offical GenesisKit Country Flag for Basque.
	
	:param: size (default .Normal) The size of the flag you wish to return
	:param: shiny (default false) If true will return a glossy verison of the flag otherwise it returns a flat image
	:returns: The GKImage (either a UIImage or NSImage) of Basque
	
	:see: CountyFlagSize
	*/
	public class func basqueFlag(size: CountyFlagSize = CountyFlagSize.Normal, shiny: Bool = false) -> GKImage {
		return getImage(kCountryFlagFlagBasque, size: size, shiny: shiny)
	}


	//MARK: Private
	private class var kCountryFlagFlatDirectory:String { return "flags-iso/flat" }
	private class var kCountryFlagShinyDirectory:String { return "flags-iso/shiny" }
	private class var kCountryFlagFlagUnknown:String { return "_unknown" }
	private class var kCountryFlagFlagOlympics:String { return "_olympics" }
	private class var kCountryFlagFlagNATO:String { return "_nato" }
	private class var kCountryFlagFlagUnitedNations:String { return "_united-nations" }
	private class var kCountryFlagFlagEngland:String { return "_england" }
	private class var kCountryFlagFlagCommonWealth:String { return "_commonwealth" }
	private class var kCountryFlagFlagScotland:String { return "_scotland" }
	private class var kCountryFlagFlagWales:String { return "_wales" }
	private class var kCountryFlagFlagBasque:String { return "_basque-country" }

	/**
	Internal getImage
	*/
	private class func getImage(fileName: String, size: CountyFlagSize, shiny: Bool) -> GKImage {
		let filetype = "png"
		var flagDir = kCountryFlagFlatDirectory
		if (shiny) {
			flagDir = kCountryFlagShinyDirectory
		}
		let unkFlag = "\(flagDir)/\(size.rawValue)/\(kCountryFlagFlagUnknown)"
		let fileName = "\(flagDir)/\(size.rawValue)/\(fileName)"
		let frameworkBundle = NSBundle.frameworkBundle()
		
		//Unwarp and if ISO flag is found return it
		if let resoruce = frameworkBundle.pathForResource(fileName, ofType: "png"){
			return GKImage(contentsOfFile:resoruce)!
		}
		
		//No file for the ISO Code was found above.. Returnt the Unknown flag
		let resoruce = frameworkBundle.pathForResource(unkFlag, ofType: "png")
		return GKImage(contentsOfFile:resoruce!)!
	}

	
}




