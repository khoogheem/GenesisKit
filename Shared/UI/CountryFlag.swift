//
//  CountryFlag.swift
//  GenesisKit
//
//  Created by Kevin A. Hoogheem on 10/26/14.
//  Copyright (c) 2014 Kevin A. Hoogheem. All rights reserved.
//

import Foundation

// Provide a typealias for a CountryFlag.
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
	public class func imageFor(alpha_2: String, size: CountyFlagSize = .Normal, shiny: Bool = false) -> GKImage {
		//TODO: Will use something later to change alpha3 to alpha2 visversa
		// Lets for now check if alpha_2 is really a Alpha2
		assert(countElements(alpha_2) == 2, "Two shall be the number thou shalt count, and the number of the counting shall be Two")

		let filetype = "png"
		var flagDir = kCountryFlagFlatDirectory
		if (shiny) {
			flagDir = kCountryFlagShinyDirectory
		}
		let unkFlag = "\(flagDir)/\(size.rawValue)/\(kCountryFlagFlagUnknown)"
		let fileName = "\(flagDir)/\(size.rawValue)/\(alpha_2.uppercaseString)"
		let frameworkBundle = NSBundle.frameworkBundle()
		
		//Unwarp and if ISO flag is found return it
		if let resoruce = frameworkBundle.pathForResource(fileName, ofType: "png"){
			return GKImage(contentsOfFile:resoruce)!
		}
		
		//No file for the ISO Code was found above.. Returnt the Unknown flag
		let resoruce = frameworkBundle.pathForResource(unkFlag, ofType: "png")
		return GKImage(contentsOfFile:resoruce!)!
	}
	
	/**
	The Offical GenesisKit Country Flag for the Olympics.
	
	:param: size (default .Normal) The size of the flag you wish to return
	:param: shiny (default false) If true will return a glossy verison of the flag otherwise it returns a flat image
	:returns: The GKImage (either a UIImage or NSImage) of the Olympics
	
	:see: CountyFlagSize
	*/
	public class func olympicFlag(size: CountyFlagSize = .Normal, shiny: Bool = false) -> GKImage {
		let filetype = "png"
		var flagDir = kCountryFlagFlatDirectory
		if (shiny) {
			flagDir = kCountryFlagShinyDirectory
		}
		let fileName = "\(flagDir)/\(size.rawValue)/\(kCountryFlagFlagOlympics)"
		let frameworkBundle = NSBundle.frameworkBundle()

		//No need to check for nil as wek now the Olympic flag is there
		let resoruce = frameworkBundle.pathForResource(fileName, ofType: "png")
		return GKImage(contentsOfFile:resoruce!)!
	}

	//MARK: Private
	private class var kCountryFlagFlatDirectory:String { return "flags-iso/flat" }
	private class var kCountryFlagShinyDirectory:String { return "flags-iso/shiny" }
	private class var kCountryFlagFlagUnknown:String { return "_unknown" }
	private class var kCountryFlagFlagOlympics:String { return "_olympics" }
	private class var kCountryFlagFlagNATO:String { return "_nato" }
	private class var kCountryFlagFlagUnitedNations:String { return "_united-nations" }
	

}




