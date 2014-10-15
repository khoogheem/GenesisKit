// Playground - noun: a place where people can play

import Foundation
import UIKit


var platform: String = {
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
	return "iPhone4,1"
//	return machine
}()


let platformString: (device: String, desciption: String, number: Int?) = {
	
	//will keep it simple here..
	switch platform {
		case "x86_64", "i386":
			return ("Simulator", "Simulator", nil)
		
		//iPhones
		case "iPhone1,1":
			return ("iPhone", "iPhone 1G", nil)
		case "iPhone1,2":
			return ("iPhone", "iPhone 3G", nil)
		case "iPhone2,1":
			return ("iPhone", "iPhone 3G3", nil)
		//iPhone 4's
		case "iPhone3,1":
			return ("iPhone", "iPhone 4", 4)
		case "iPhone3,3":
			return ("iPhone", "Verizon iPhone 4", 4)
		case "iPhone4,1":
			return ("iPhone", "iPhone 4S", 4)
		//iPhone 5's
		case "iPhone4,1":
			return ("iPhone", "iPhone 4S", 4)

		
		
		default:
			return ("unk", "unk", nil)
	}
	
}()

let shit = platformString.desciption


enum Suit {
	case Spades, Hearts, Diamonds, Clubs
	func simpleDescription() -> String {
		switch self {
		case .Spades:
			return "spaces"
		case .Hearts:
			return "hearts"
		case .Diamonds:
			return "diamonds"
		case .Clubs:
			return "clubs"
		}
	}
}

Suit.Spades.simpleDescription()


//var _SYS_NAMELEN: Int32 { get }
//
//struct utsname {
//	var sysname: (Int8, Int8) /* [XSI] Name of OS */
//	var nodename: (Int8, Int8) /* [XSI] Name of this network node */
//	var release: (Int8, Int8) /* [XSI] Release level */
//	var version: (Int8, Int8) /* [XSI] Version level */
//	var machine: (Int8, Int8 ) /* [XSI] Hardware type */
//}
//

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

