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
	
	let IPAD = UIDevice.currentDevice().userInterfaceIdiom == .Pad
	let IPHONE = UIDevice.currentDevice().userInterfaceIdiom == .Phone

	let isLandscape = UIInterfaceOrientationIsLandscape(UIApplication.sharedApplication().statusBarOrientation)
	let isPortrait = UIInterfaceOrientationIsPortrait(UIApplication.sharedApplication().statusBarOrientation)

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
	class var appName: String {
		return self.fromInfoBundle("CFBundleName")!
	}
	
	
	class var appVersion: String {
		return self.fromInfoBundle("CFBundleShortVersionString")!
	}

	class var appBuild: String {
		return self.fromInfoBundle("CFBundleVersion")!
	}
	
	class var appIdentifer: String {
		return self.fromInfoBundle("CFBundleIdentifier")!
	}

	
//	#if os(iOS)
	// MARK: Radio Information

	/**
	Returns a string value of the current Radio Access Technology
 
	:returns: returns The string value of the Radio Access Technology name
	*/
	@availability(OSX, unavailable, message="Not Available for OSX")
	class var radioAccessName: String {
		#if os(iOS)
			//Not really needed.. but will just protect on Simulator and such.
			if CTTelephonyNetworkInfo().respondsToSelector(Selector("currentRadioAccessTechnology")) {
				return CTTelephonyNetworkInfo().currentRadioAccessTechnology
			}
		#endif
		return "No Radio"
	}
	
	/**
	Returns a string value of the current Cellular Carriers name
 
	:returns: returns The string value of the current Cellular Carriers Name
	*/
	@availability(OSX, unavailable, message="Not Available for OSX")
	class var carrierName: String {
		
		#if os(iOS)
			//Not really needed.. but will just protect on Simulator and such.
			if CTTelephonyNetworkInfo().respondsToSelector(Selector("currentRadioAccessTechnology")) {
				var carrier: CTCarrier
				carrier =  CTTelephonyNetworkInfo().subscriberCellularProvider
				return carrier.carrierName
			}
		#endif
		
		return "Unknown"
	}
	
//	#endif


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
				if compare >= 10.9 {
					return true
				}
				return false
			#endif

		}

		return systemIsVersion
	}
	
	typealias SystemVerisonCompletion = (success: Bool) -> Void
	/**
	Compares a float representation of the system version and returns a Closure
 
	:param: sysVersion A float value of the System Version.  ie `"8.0"`
	:returns: returns SystemVerisonCompletion with `success` as a bool value
	*/
	class func onSystemVerison(sysVersion: Float, completion: SystemVerisonCompletion) {
		
		if self.OSVerison(sysVersion) {
			completion(success: true)
		}else {
			completion(success: false)
		}
	}
	
	/**
	Provides the System version as a string
 
	:returns: returns The Systems Version as a String value
	*/
	class var systemVersion: String {
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
				
				//ok.. so we know Swift only works on 10.9 and above.. so just say its 10.9
				dispatch_once(&Static.onceToken) {
					Static.systemVer = "10.9"
				}

			#endif
			
		}
		
		return Static.systemVer!
	}
	
	//MARK: Device Platform
	/** A String value of the device platform information */
	private class var platform: String {
		// Declare an array that can hold the bytes required to store `utsname`, initilized
		// with zeros. We do this to get a chunk of memory that is freed upon return of
		// the method
		var sysInfo: [CChar] = Array(count: sizeof(utsname), repeatedValue: 0)
		
		// We need to get to the underlying memory of the array:
		let machine = sysInfo.withUnsafeMutableBufferPointer {
			(inout ptr: UnsafeMutableBufferPointer<CChar>) -> String in
			// Call uname and let it write into the memory Swift allocated for the array
			uname(UnsafeMutablePointer<utsname>(ptr.baseAddress))
			
			// Now here is the ugly part: `machine` is the 5th member of `utsname` and
			// each member member is `_SYS_NAMELEN` sized. We skip the the first 4 members
			// of the struct which will land us at the memory address of the `machine`
			// member
			let machinePtr = advance(ptr.baseAddress, Int(_SYS_NAMELEN * 4))
			
			// Create a Swift string from the C string
			return String.fromCString(machinePtr)!
		}
		return machine
	}
	
	/** 
	 Provides platform specific information for the current device
	 
	 :returns: device A string of the Device type.  iPhone, iPad, iPod
	 :returns: desciption A string of the Device types full description.. Verizon iPhone 4
	 :returns: number An optional Int value of the device.. 6 - for iPhone 6 or 6 Plus
	*/
	class var platformString:(device: String, desciption: String, number: Int?) {
//	class func platformString() -> (device: String, desciption: String, number: Int?) {
		
		//will keep it simple here..
		switch platform {
		case "x86_64", "i386":
			return ("Simulator", "Simulator", nil)
			
			//iPhones
		case "iPhone1,1": return ("iPhone", "iPhone 1G", nil)
		case "iPhone1,2": return ("iPhone", "iPhone 3G", nil)
		case "iPhone2,1": return ("iPhone", "iPhone 3G3", nil)
			//iPhone 4's
		case "iPhone3,1": return ("iPhone", "iPhone 4", 4)
		case "iPhone3,3": return ("iPhone", "Verizon iPhone 4", 4)
		case "iPhone4,1": return ("iPhone", "iPhone 4S", 4)
			//iPhone 5's
		case "iPhone5,1": return ("iPhone", "iPhone 5 (GSM)", 5)
		case "iPhone5,2": return ("iPhone", "iPhone 5 (GSM+CDMA)", 5)
		case "iPhone5,3": return ("iPhone", "iPhone 5c GSM)", 5)
		case "iPhone5,4": return ("iPhone", "iPhone 5c (Global)", 5)
		case "iPhone6,1": return ("iPhone", "iPhone 5s (GSM)", 5)
		case "iPhone6,2": return ("iPhone", "iPhone 5s (Global)", 5)
			//iPhone 6's
		case "iPhone7,1": return ("iPhone", "iPhone 6 Plus", 6)
		case "iPhone7,2": return ("iPhone", "iPhone 6", 6)

			//iPods
		case "iPod1,1": return ("iPod", "iPod Touch 1G", nil)
		case "iPod2,1": return ("iPod", "iPod Touch 2G", nil)
		case "iPod3,1": return ("iPod", "iPod Touch 3G", nil)
		case "iPod4,1": return ("iPod", "iPod Touch 4G", nil)
		case "iPod5,1": return ("iPod", "iPod Touch 5G", nil)
		
			//iPads
		case "iPad1,1": return ("iPad", "iPad", nil)
			//iPad 2's
		case "iPad2,1": return ("iPad", "iPad 2 (WiFi)", 2)
		case "iPad2,2": return ("iPad", "iPad 2 (GSM)", 2)
		case "iPad2,3": return ("iPad", "iPad 2 (CDMA)", 2)
		case "iPad2,4": return ("iPad", "iPad 2", 2)
			//iPad 3's
		case "iPad3,1": return ("iPad", "iPad 3 (WiFi)", 3)
		case "iPad3,2": return ("iPad", "iPad 3 (CDMA)", 3)
		case "iPad3,3": return ("iPad", "iPad 3 (GSM)", 3)
			//iPad 4's
		case "iPad3,4": return ("iPad", "iPad 4 (WiFi)", 4)
		case "iPad3,5": return ("iPad", "iPad 4 (GSM)", 4)
		case "iPad3,6": return ("iPad", "iPad 4 (Global)", 4)
			//iPad Airs
		case "iPad4,1": return ("iPad", "iPad Air (WiFi)", nil)
		case "iPad4,2": return ("iPad", "iPad Air (Cellular)", nil)
			
			//iPad Mini's
		case "iPad2,5": return ("iPad", "iPad Mini (WiFi)", nil)
		case "iPad2,6": return ("iPad", "iPad Mini (GSM)", nil)
		case "iPad2,7": return ("iPad", "iPad Mini (Global)", nil)
		case "iPad4,4": return ("iPad", "iPad Mini Retina (WiFi)", nil)
		case "iPad4,5": return ("iPad", "iPad Mini Retina (Cellular)", nil)
			
			//AppleTV
		case "AppleTV2,1": return ("AppleTV", "AppleTV 2", 2)
		case "AppleTV3,1": return ("AppleTV", "AppleTV 3", 3)
		case "AppleTV3,2": return ("AppleTV", "AppleTV 3", 3)
			
		default:
			return ("unknown", "unknown", nil)
		}
		
	}

	
	//MARK: Class Private Functions
	private class func fromInfoBundle(info: String) -> String? {
		return NSBundle.mainBundle().infoDictionary![info] as NSString?
	}
	
	
}