// Playground - noun: a place where people can play

import Cocoa
import GenesisKitOSX


var str = "Hello, playground"

var systemVersion = NSProcessInfo.processInfo().operatingSystemVersion;


if NSObject.respondsToSelector(Selector("UIAccessibilityIsBoldTextEnabled")) {
	var poop =  "Avenir-Medium"
}

var shit =  "Avenir-Light"

let bob: Int32 = NSAppKitVersionNumber10_9
let bobs = NSAppKitVersionNumber

if Int(bobs) >= Int(bob) {
	println("OS X >= 10.10")
}

#if os(iOS)
	import UIKit
	typealias GKFont = UIFont
	#elseif os(OSX)
	import Cocoa
	typealias GKFont = NSFont
#endif

class DefaultsManager {
	class func get(key:String) -> AnyObject?{
		return true
	}
}

/**
Manager class for Fonts
*/
class FontManager {
	
	private class var standardFontName: String {
		
		#if os(iOS)
			let systemCheck: Bool = IOS8
			#elseif os(OSX)
			let systemCheck: Bool = true
		#endif
		
		//Lets check if they set a standardFont in Defaults Manger..
		if let stdFont = DefaultsManager.get("GenesisKit.standardFontName") as? String {
			if systemCheck {
				if true {
					return self.standardBoldFontName
				}
			}
			return stdFont
		}
		
		//Ok no font was set in Defaults Manager.. Lets return our Default
		if systemCheck {
			if true {
				return self.standardBoldFontName
			}
		}
		return "Avenir-Light"
		
	}
	
	private class var standardBoldFontName: String {
		//Lets check if they set a standardBoldFont in Defaults Manger..
		if let stdBoldFont = DefaultsManager.get("GenesisKit.standardBoldFontName") as? String {
			return stdBoldFont
		}
		
		return "Avenir-Medium"
		//		return "Helvetica-Bold"
	}
	
	
	class func standardFontWithSize(size: CGFloat) -> GKFont {
		return GKFont(name: self.standardFontName, size: size)!
	}
	
	class func standardBoldFontWithSize(size: CGFloat) -> GKFont {
		return GKFont(name: self.standardBoldFontName, size: size)!
	}
	
}

FontManager.standardBoldFontName
FontManager.standardBoldFontWithSize(12.0)

