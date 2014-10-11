//
//  Diagnostics.swift
//  Test
//
//  Created by Kevin A. Hoogheem on 10/6/14.
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
	import CoreTelephony

	/** Helper for System Type: iOS8 */
	let IOS8 = Diagnostics.OSVerison(8.0)
	/** Helper for System Type: iOS7 */
	let IOS7 = Diagnostics.OSVerison(7.0)
	let IOS6 = Diagnostics.OSVerison(6.0) //this would be odd given swift doesn't support it ;)-
	
	#elseif os(OSX)
	import Cocoa

	/** Helper for System Type: Yosemite OSX 10.10 */
	let OSX_Yosemite = Diagnostics.OSVerison(10.10)
	/** Helper for System Type: Mavericks OSX 10.9 */
	let OSX_Mavericks = Diagnostics.OSVerison(10.9)

#endif


//MARK: Class
public class Diagnostics : NSObject {
	
	// MARK: App Info
	//Until Swift supports Class Vars.. lets just make this a function..
	
	class func appName() -> String {
		return self.fromInfoBundle("CFBundleName")!
	}
	
	class func appVersion() -> String {
		return self.fromInfoBundle("CFBundleShortVersionString")!
	}

	class func appBuild() -> String {
		return self.fromInfoBundle("CFBundleVersion")!
	}
	
	class func appIdentifer() -> String {
		return self.fromInfoBundle("CFBundleIdentifier")!
	}

	
	#if os(iOS)
	// MARK: Radio Information

	/**
	Returns a string value of the current Radio Access Technology
 
	:returns: returns The string value of the Radio Access Technology name
	*/
	class func radioAccessName() -> String {
		
		//Not really needed.. but will just protect on Simulator and such.
		if CTTelephonyNetworkInfo().respondsToSelector(Selector("currentRadioAccessTechnology")) {
			return CTTelephonyNetworkInfo().currentRadioAccessTechnology
		}
		
		return "No Radio"
	}
	
	/**
	Returns a string value of the current Cellular Carriers name
 
	:returns: returns The string value of the current Cellular Carriers Name
	*/
	class func carrierName() -> String {
		
		//Not really needed.. but will just protect on Simulator and such.
		if CTTelephonyNetworkInfo().respondsToSelector(Selector("currentRadioAccessTechnology")) {
			var carrier: CTCarrier
			carrier =  CTTelephonyNetworkInfo().subscriberCellularProvider
			return carrier.carrierName
		}
		
		return "Unknown"
	}

	#endif


	// MARK: System Version Check

	/**
	Compares a float representation of the system version and returns true/false
 
	:param: compare A float value of the System Version.  ie `"8.0"`
	:returns: returns a bool value
	*/
	class func OSVerison(compare: Float) -> Bool {
		var systemIsVersion: Bool = false
		let wholePart = Int(compare)
		let fractionalPart = fmod(compare, 1.0)
		
		//If iOS8 or OSX10.10
		if  NSProcessInfo.processInfo().respondsToSelector(Selector("isOperatingSystemAtLeastVersion:")) {
			let version = NSOperatingSystemVersion(majorVersion: wholePart, minorVersion: Int(fractionalPart), patchVersion: 0)
			
			systemIsVersion = NSProcessInfo.processInfo().isOperatingSystemAtLeastVersion(version)

		}else {
			//Check for 10.9 and iOS7
			
			#if os(iOS)
				//Old iOS Way
				systemIsVersion = UIDevice.currentDevice().systemVersion >= String(wholePart)

				#elseif os(OSX)
				
				//TODO: Check the OSX Version
				let versMaj: int,  versMin: int,  versBugFix: int
				
				Gestalt(gestaltSystemVersionMajor, &versMaj)
				Gestalt(gestaltSystemVersionMinor, &versMin)
				Gestalt(gestaltSystemVersionBugFix, &versBugFix)
				
				let checkVer: CGFloat = versMaj+(versMin/100);
				if (checkVer >= version) {
				systemIsVersion = true
				}
				
			#endif

		}

		return systemIsVersion
	}
	
	/**
	Compares a float representation of the system version and returns a Closure
 
	:param: sysVersion A float value of the System Version.  ie `"8.0"`
	:returns: returns completionClosure with `success` as a bool value
	*/
	class func onSystemVerison(sysVersion: Float, completionClosure: (success: Bool) -> ()) {
		
		if self.OSVerison(sysVersion) {
			completionClosure(success: true)
		}else {
			completionClosure(success: false)
		}
	}
	
	/**
	Provides the System version as a string
 
	:returns: returns The Systems Version as a String value
	*/
	class func systemVersion() -> String {
		struct Static {
			static var systemVer: String? = nil
			static var onceToken : dispatch_once_t = 0
		}
		//TODO: think about putting this all in just one dispact_once 

		//If iOS8 or OSX10.10
		if  NSProcessInfo.processInfo().respondsToSelector(Selector("isOperatingSystemAtLeastVersion:")) {
			dispatch_once(&Static.onceToken) {
				let version: NSOperatingSystemVersion = NSProcessInfo.processInfo().operatingSystemVersion
				Static.systemVer = "\(version.majorVersion).\(version.minorVersion)"
			}
			
		}else {
			//Check for 10.9 and iOS7
			
			#if os(iOS)
				//Old iOS Way
				dispatch_once(&Static.onceToken) {
					Static.systemVer = String(UIDevice.currentDevice().systemVersion)
				}
				
				#elseif os(OSX)
				
				//TODO: Add the OSX Version
				dispatch_once(&Static.onceToken) {
					Static.systemVer = "1"
				}

			#endif
			
		}
		
		return Static.systemVer!
	}
	
	
	
	//MARK: Class Private Functions
	private class func fromInfoBundle(info: String) -> String? {
		return NSBundle.mainBundle().infoDictionary[info] as NSString?
	}
	
	
}