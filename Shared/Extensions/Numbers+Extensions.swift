//
//  Numbers+Extensions.swift
//  GenesisKit
//
//  Created by Kevin A. Hoogheem on 2/28/15.
//  Copyright (c) 2015 Kevin A. Hoogheem. All rights reserved.
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

extension Bool {
	
	init<T : IntegerType>(_ integer: T){
		self.init(integer != 0)
	}
	
}

extension String {
    var hexaToInt      : Int    { return Int(strtoul(self, nil, 16))    }
    var hexaToDouble   : Double { return Double(strtoul(self, nil, 16)) }
    var hexaToBinary   : String { return String(hexaToInt, radix: 2)    }
    var intToHexa      : String { return String(toInt()!, radix: 16)    }
    var intToBinary    : String { return String(toInt()!, radix: 2)     }
    var binaryToInt    : Int    { return Int(strtoul(self, nil, 2))     }
    var binaryToDouble : Double { return Double(strtoul(self, nil, 2))  }
    var binaryToHexa   : String { return String(binaryToInt, radix: 16) }
    var toBtyes        : [UInt8]{ return [UInt8](self.utf8)             }
}

extension Int {
    var binaryString: String { return String(self, radix: 2)        }
    var hexaString  : String { return String(self, radix: 16)       }
    var doubleValue : Double { return Double(self)                  }
    var asciiValue  : String { return String(UnicodeScalar(self))   }
    
    var msbValue    : Int    { return self & 0xFF                   }
    var lsbValue    : Int    { return  ((self & 0xFF00) >> 8)       }
    
    var arrayWithSignificantBits: [Int] { return [(self & 0xFF), ((self & 0xFF00) >> 8)] }

	var boolValue  : Bool	{
		switch self {
		case 0:
			return false
		case 1:
			return true
		default:
			return false
		}
	}

}

extension UInt8 {
    var binaryString: String { return String(self, radix: 2)  }
    var hexaString  : String { return String(self, radix: 16) }
    var doubleValue : Double { return Double(self) }
    var asciiValue  : String { return String(UnicodeScalar(self)) }
	
	var boolValue  : Bool	{
		switch self {
		case 0:
			return false
		case 1:
			return true
		default:
			return false
		}
	}

}
