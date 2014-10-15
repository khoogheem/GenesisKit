//
//  LogManager.swift
//  GenesisKit
//
//  Created by Kevin A. Hoogheem on 10/12/14.
//
//

import Foundation

#if os(iOS)
	import UIKit
	
#elseif os(OSX)
	import Cocoa
	
#endif

//	static var LogNone: LogValueMask { return LogValueMask(1 << 0) }
//	static var LogDefault: LogValueMask { return LogValueMask(1 << 1) }
//	static var LogAll: LogValueMask { return LogValueMask(1 << 2) }
//	static var LogLoading: LogValueMask { return LogValueMask(1 << 3) }
//	static var LogUnLoading: LogValueMask { return LogValueMask(1 << 4) }
//	static var LogBanner: LogValueMask { return LogValueMask(1 << 5) }
//	static var LogVideo: LogValueMask { return LogValueMask(1 << 6) }
//	static var LogNotification: LogValueMask { return LogValueMask(1 << 7) }
//	static var LogLayers: LogValueMask { return LogValueMask(1 << 8) }
//	static var LogDataLoad: LogValueMask { return LogValueMask(1 << 9) }


// like this vs the crazy way
class LogManagerBitMask {
	class var None			: UInt32 { return 0 }
	class var All			: UInt32 { return UInt32.max }
	class var Default		: UInt32 { return 1 }
	class var Loading		: UInt32 { return 1<<1 }
	class var UnLoading		: UInt32 { return 1<<2 }
	class var Banner		: UInt32 { return 1<<3 }
	class var Video			: UInt32 { return 1<<4 }
	class var Notification	: UInt32 { return 1<<5 }
	class var Layers		: UInt32 { return 1<<6 }
	class var DataLoading	: UInt32 { return 1<<7 }
}

//MARK: Convenience Loggers

/** The Default Logger */
func LMLog(format:String, args: CVarArgType...){
	LogManager.sharedLogger.logMessage(NSString(format:format, arguments: getVaList(args)), withLogManagerBitMask: LogManagerBitMask.Default)
}


private func getcallstack(source: String) -> NSArray {
	var sourceString = source
	var seperatorSet: NSCharacterSet
	seperatorSet = NSCharacterSet(charactersInString:" -[]+?.,")
	var array: [String] = sourceString.componentsSeparatedByCharactersInSet(seperatorSet).filter({$0 != ""})

	return array
}

class LogManager  : NSObject {
	private var logValueMask: UInt32
	
	class var sharedLogger : LogManager {
		struct Static {
			static var onceToken : dispatch_once_t = 0
			static var instance : LogManager? = nil
		}
		dispatch_once(&Static.onceToken) {
			Static.instance = LogManager()
		}
		return Static.instance!
	}
	
	override init() {
		self.logValueMask = LogManagerBitMask.None
		
		super.init()
	}
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Main Log Code
	////////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//MARK: Main Log Code
	
	func logMessage(message: String, withLogManagerBitMask logmask: UInt32 = LogManagerBitMask.Default ) {
		//ok no mask set
		NSLog(message)
	}
	
	
//	var shit: NSArray = NSThread.callStackSymbols()
//	//		var sourced: String = shit[1] as String!
//	//		var sourced =  shit["Source"]
//	var fucker: [String] = shit as Array
//	
//	print(fucker)
//	
//	var callStack: NSArray = getcallstack(fucker[0]	)
//	//
//	print(callStack.objectAtIndex(0))
//	print(callStack.objectAtIndex(1))
//	print(callStack.objectAtIndex(3))

}




//MARK: blah
//LogValue Bit Mask
//struct LogValueMask : RawOptionSetType, BooleanType {
//	private var value: UInt = 0
//	init(_ value: UInt) { self.value = value }
//	init(rawValue value: UInt) { self.value = value }
//	init(nilLiteral: ()) { self.value = 0 }
//	static var allZeros: LogValueMask { return self(0) }
//	static func fromMask(raw: UInt) -> LogValueMask? { return self(raw) }
//	var rawValue: UInt { return self.value }
//
//	static var None: LogValueMask { return self(0) }
//	static var LogNone: LogValueMask { return LogValueMask(1 << 0) }
//	static var LogDefault: LogValueMask { return LogValueMask(1 << 1) }
//	static var LogAll: LogValueMask { return LogValueMask(1 << 2) }
//	static var LogLoading: LogValueMask { return LogValueMask(1 << 3) }
//	static var LogUnLoading: LogValueMask { return LogValueMask(1 << 4) }
//	static var LogBanner: LogValueMask { return LogValueMask(1 << 5) }
//	static var LogVideo: LogValueMask { return LogValueMask(1 << 6) }
//	static var LogNotification: LogValueMask { return LogValueMask(1 << 7) }
//	static var LogLayers: LogValueMask { return LogValueMask(1 << 8) }
//	static var LogDataLoad: LogValueMask { return LogValueMask(1 << 9) }
//}
