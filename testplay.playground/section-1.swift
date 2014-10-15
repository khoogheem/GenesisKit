// Playground - noun: a place where people can play

import Foundation
import UIKit



struct GenericGenerator<T>: GeneratorType {
	var items: Slice<T>
	
	mutating func next() -> T? {
		if items.isEmpty {return nil}
		let ret = items[0]
		items = items[1..<items.count]
		return ret
	}
}

extension Stack : SequenceType {	func generate() -> GenericGenerator<T> {		return GenericGenerator( items: items[0..<items.endIndex] )	}}

struct Stack<T: Equatable>{
	private var items = [T]()
	
	var topItem: T? {
		return items.isEmpty ? nil : items[items.count - 1]
	}

	var count: Int {
		return items.endIndex
	}
	
	var firstObject: T? {
		return items.first
	}
	
	var lastObject: T? {
		return items.last
	}
	
	mutating func push(item: T) {
		items.append(item)
	}
	
	mutating func pop() -> T {
		return items.removeLast()
	}
	
	func objectAtIndex(index: Int) -> T? {
		if index >= 0 && index <= items.count {
			return items[index]
		}
		
		return nil
	}

	func indexOfObject(object:T) -> Int? {
		for i in 0..<items.count {
			if items[i] == object {
				return i
			}
		}

		return nil
	}
		
}

var donkey = Stack<String>()
donkey.push("done")
var crap: String = donkey.topItem!
donkey.push("fuckr")

donkey.indexOfObject(crap)
donkey.indexOfObject("fuckrd")

//donkey.lastObject
//donkey.count
//donkey.push("dick")
//donkey.push("dong")
//donkey.push("wang")
//donkey.push("pecker")
//donkey.objectAtIndex(3)
//donkey.objectAtIndex(33)
//donkey.items.endIndex

//for x in donkey {
//	x
//}


//// like this vs the crazy way
//class LogManagerBitMask {
//	class var None			: UInt8 { return 0 }
//	class var All			: UInt8 { return UInt8.max }
//	class var Default		: UInt8 { return 1 }
//	class var Loading		: UInt8 { return 1<<1 }
//	class var UnLoading		: UInt8 { return 1<<2 }
//	class var Banner		: UInt8 { return 1<<3 }
//	class var Video			: UInt8 { return 1<<4 }
//	class var Notification	: UInt8 { return 1<<5 }
//	class var Layers		: UInt8 { return 1<<6 }
//	class var DataLoading	: UInt8 { return 1<<7 }
//}
//
//
//private func getcallstack(source: String) -> NSArray {
//	var sourceString = source
//	var seperatorSet: NSCharacterSet
//	seperatorSet = NSCharacterSet(charactersInString:" -[]+?.,")
//	var array: [String] = sourceString.componentsSeparatedByCharactersInSet(seperatorSet).filter({$0 != ""})
//	
//	return array
//}
//
//
//func GKLog(format:String, args: CVarArgType...){
//	//	var shit: NSArray = NSThread.callStackSymbols()
//	//	//		var sourced: String = shit[1] as String!
//	//	//		var sourced =  shit["Source"]
//	//	var fucker: [String] = shit as Array
//	//
//	//	print(fucker)
//	//
//	//	var callStack: NSArray = getcallstack(fucker[0]	)
//	//	//
//	//	print(callStack.objectAtIndex(0))
//	//	print(callStack.objectAtIndex(1))
//	//	print(callStack.objectAtIndex(3))
//
////	NSArray *callStack = getcallstack([[NSThread callStackSymbols] objectAtIndex:1]);
////	if ([TTLogManager sharedLogger].verboseLogging) {
////		output = [NSString stringWithFormat:@"[%@ %@] - %@", [callStack objectAtIndex:3], [callStack objectAtIndex:4], output];
////	}
//	
//	var callStack: NSArray = NSThread.callStackSymbols()
//	var callStrings: [String] = callStack as Array
//	
//	
//	LogManager.sharedLogger.logMessage(NSString(format:format, arguments: getVaList(args)), withLogManagerBitMask: 0)
//}
//
//
//class LogManager  : NSObject {
//	var logValueMask = LogManagerBitMask.All
//
//	class var sharedLogger : LogManager {
//	struct Static {
//		static var onceToken : dispatch_once_t = 0
//		static var instance : LogManager? = nil
//
//		}
//		dispatch_once(&Static.onceToken) {
//			Static.instance = LogManager()
//		}
//		return Static.instance!
//	}
//	
//	override init() {
//
//		logValueMask = LogManagerBitMask.All
//		println(logValueMask)
//
//		super.init()
//	}
//	
//	////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	// Main Log Code
//	////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	//MARK: Main Log Code
//	
//	func logMessage(message: String, withLogManagerBitMask logbitmask: UInt8 = LogManagerBitMask.All ) {
//
//		//Ok.. so lets just not do this for now..
//		//ok no mask set
//		println(message)
//	}
//	
//	
//	//	var shit: NSArray = NSThread.callStackSymbols()
//	//	//		var sourced: String = shit[1] as String!
//	//	//		var sourced =  shit["Source"]
//	//	var fucker: [String] = shit as Array
//	//
//	//	print(fucker)
//	//
//	//	var callStack: NSArray = getcallstack(fucker[0]	)
//	//	//
//	//	print(callStack.objectAtIndex(0))
//	//	print(callStack.objectAtIndex(1))
//	//	print(callStack.objectAtIndex(3))
//	
//}
//
//LogManager.sharedLogger.logValueMask =  LogManagerBitMask.None | LogManagerBitMask.Default
////LogManager.sharedLogger.logMessage("d")
////GKLog(format: "What: %@, %@", "poo", "peed")
//GKLog("asfd")


//LUHN - CC validation


//let TDF: Int  = 20123456789
//
//let blah: String = String(TDF)
//var anArray: [String] = Array()
//
//
//for (var i=0; i < countElements(blah); i++) {
//	let index = advance(blah.startIndex, i)
//	let character = blah[index] // -> "3"
//	
//	println(character)
//	anArray.append(String(character))
//}
//
//println(anArray)

//Above is the Int to a StringArray
//Bottom check if valid cc - could return a tuple that says true/false and the CC type.

//for (NSUInteger i = 0; i < [reversedString length]; i++) {
//	NSInteger digit = [[NSString stringWithFormat:@"%C", [reversedString characterAtIndex:i]] integerValue];
//
//	if (i % 2 == 0) {
//		evenSum += digit;
//	}
//	else {
//		oddSum += digit / 5 + (2 * digit) % 10;
//	}
//}
//return (oddSum + evenSum) % 10 == 0;

