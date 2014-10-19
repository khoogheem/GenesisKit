// Playground - noun: a place where people can play

import Foundation
import UIKit

//
//{
//	"code" : "AED",
//	"number" : "784",
//	"ecode" : "2",
//	"fundscode" : false,
//	"name" : {
//		"prename" : "United Arab Emirates",
//		"majorName" : "Dirham",
//		"fractionalName" : "Fils",
//		"nicknames" : []
//	},
//	"symbol" : {
//		"major" : "د.إ",
//		"minor" : "فلس"
//	},
//	"centralBank" : {
//		"name" : "Central Bank of the UAE",
//		"url" : "http://www.centralbank.ae"
//	}
//},

//{
//	"code" : "USD",
//	"number" : "840",
//	"ecode" : "2",
//	"fundscode" : false,
//	"name" : {
//		"prename" : "United States",
//		"majorName" : "Dollar",
//		"fractionalName" : "Cent",
//		"nicknames" : [
//		"greenback",
//		"buck",
//		"green",
//		"dough",
//		"smacker",
//		"bones",
//		"dead presidents",
//		"simoleons",
//		"moola",
//		"moolah"
//		]
//	},
//	"symbol" : {
//		"major" : "$",
//		"minor" : "¢"
//	},
//	"centralBank" : {
//		"name" : "Federal Reserve Bank",
//		"url" : "http://www.federalreserve.gov"
//	}
//},
//

struct Currency {
	/** The Symbol for the Major part of the currency.. ex: USD - $ */
	var majorSymbol: String? = nil
	
	/** The Symbol for the Minor part of the currency.. ex: USD - ¢ */
	var minorSymbol: String? = nil
	
	/** The Code typically the ISO Alpha-3 Code.. ex United States Dollars USD */
	var code: String? = nil
	
	/** The ISO number for the currency. */
	var number: Int? = nil
	
	var name: String? = nil
	
	/** If the Currency is a Funds code or a hard currency */
	var fundscode: Bool = false
	
	//don't need init() since we set inital values..
	
}

//var turd =  Stack<String>()

var cod = Currency()
cod.code = "UDS"
var USD  = Currency(majorSymbol: nil, minorSymbol: nil, code: "USD", number: 204, name: "United States Dollar", fundscode: false)
USD.code
USD.name


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

