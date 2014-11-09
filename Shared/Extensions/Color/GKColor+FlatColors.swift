//
//  GKColor+FlatColors.swift
//  GenesisKit
//
//  Created by Kevin A. Hoogheem on 10/29/14.
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
 iOS & OSX Extensions of GKColor for Flat Colors
*/
public extension GKColor {
	//MARK: Flat Colors
	
	/**
	Returns a flat color object whose RGBA values are (r 0.086 g 0.627 b 0.522 a 1.0)
	
	:returns: Returns The Color Object
	*/
	public class func greenSeaColor() -> GKColor { return GKColor(hexString: "16A085") }
	
	/**
	Returns a flat color object whose RGBA values are (r 0.18 g 0.8 b 0.443 a 1.0)
	
	:returns: Returns The Color Object
	*/
	public class func emeraldColor() -> GKColor { return GKColor(hexString: "2ECC71") }
	
	/**
	Returns a flat color object whose RGBA values are (r 0.153 g 0.682 b 0.376 a 1.0)
	
	:returns: Returns The Color Object
	*/
	public class func nephritisColor() -> GKColor { return GKColor(hexString: "27AE60") }
	
	/**
	Returns a flat color object whose RGBA values are (r 0.204 g 0.596 b 0.859 a 1.0)
	
	:returns: Returns The Color Object
	*/
	public class func peterRiverColor() -> GKColor { return GKColor(hexString: "3498DB") }
	
	/**
	Returns a flat color object whose RGBA values are (r 0.161 g 0.502 b 0.725 a 1.0)
	
	:returns: Returns The Color Object
	*/
	public class func belizeHoleColor() -> GKColor { return GKColor(hexString: "2980B9") }
	
	/**
	Returns a flat color object whose RGBA values are (r 0.608 g 0.349 b 0.714 a 1.0)
	
	:returns: Returns The Color Object
	*/
	public class func amethystColor() -> GKColor { return GKColor(hexString: "9B59B6") }
	
	/**
	Returns a flat color object whose RGBA values are (r 0.557 g 0.267 b 0.678 a 1.0)
	
	:returns: Returns The Color Object
	*/
	public class func wisteriaColor() -> GKColor { return GKColor(hexString: "8E44AD") }
	
	/**
	Returns a flat color object whose RGBA values are (r 0.204 g 0.286 b 0.369 a 1.0)
	
	:returns: Returns The Color Object
	*/
	public class func wetAsphaltColor() -> GKColor { return GKColor(hexString: "34495E") }
	
	/**
	Returns a flat color object whose RGBA values are (r 0.173 g 0.243 b 0.314 a 1.0)
	
	:returns: Returns The Color Object
	*/
	public class func midnightBlueColor() -> GKColor { return GKColor(hexString: "2C3E50") }
	
	/**
	Returns a flat color object whose RGBA values are (r 0.945 g 0.769 b 0.059 a 1.0)
	
	:returns: Returns The Color Object
	*/
	public class func sunflowerColor() -> GKColor { return GKColor(hexString: "F1C40F") }
	
	/**
	Returns a flat color object whose RGBA values are (r 0.953 g 0.612 b 0.071 a 1.0)
	
	:returns: Returns The Color Object
	*/
	public class func flatOrangeColor() -> GKColor { return GKColor(hexString: "F39C12") }
	
	/**
	Returns a flat color object whose RGBA values are (r 0.902 g 0.494 b 0.133 a 1.0)
	
	:returns: Returns The Color Object
	*/
	public class func carrotColor() -> GKColor { return GKColor(hexString: "E67E22") }
	
	/**
	Returns a flat color object whose RGBA values are (r 0.827 g 0.329 b 0.0 a 1.0)
	
	:returns: Returns The Color Object
	*/
	public class func pumpkinColor() -> GKColor { return GKColor(hexString: "D35400") }
	
	/**
	Returns a flat color object whose RGBA values are (r 0.906 g 0.298 b 0.235 a 1.0)
	
	:returns: Returns The Color Object
	*/
	public class func alizarinColor() -> GKColor { return GKColor(hexString: "E74C3C") }
	
	/**
	Returns a flat color object whose RGBA values are (r 0.753 g 0.224 b 0.169 a 1.0)
	
	:returns: Returns The Color Object
	*/
	public class func pomegranateColor() -> GKColor { return GKColor(hexString: "C0392B") }
	
	/**
	Returns a flat color object whose RGBA values are (r 0.925 g 0.941 b 0.945 a 1.0)
	
	:returns: Returns The Color Object
	*/
	public class func cloudsColor() -> GKColor { return GKColor(hexString: "ECF0F1") }
	
	/**
	Returns a flat color object whose RGBA values are (r 0.741 g 0.765 b 0.78 a 1.0)
	
	:returns: Returns The Color Object
	*/
	public class func silverColor() -> GKColor { return GKColor(hexString: "BDC3C7") }
	
	/**
	Returns a flat color object whose RGBA values are (r 0.584 g 0.647 b 0.651 a 1.0)
	
	:returns: Returns The Color Object
	*/
	public class func concreteColor() -> GKColor { return GKColor(hexString: "95A5A6") }
	
	/**
	Returns a flat color object whose RGBA values are (r 0.498 g 0.549 b 0.553 a 1.0)
	
	:returns: Returns The Color Object
	*/
	public class func asbestosColor() -> GKColor { return GKColor(hexString: "7F8C8D") }

}