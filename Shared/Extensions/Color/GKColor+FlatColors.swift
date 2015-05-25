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
	
	public enum FlatColor: String {
		/** Flat color object whose RGBA values are (r 0.086 g 0.627 b 0.522 a 1.0) */
		case greenSeaColor = "16A085"
		/** Flat color object whose RGBA values are (r 0.18 g 0.8 b 0.443 a 1.0) */
		case emeraldColor = "2ECC71"
		/** Flat color object whose RGBA values are (r 0.153 g 0.682 b 0.376 a 1.0) */
		case nephritisColor = "27AE60"
		/** Flat color object whose RGBA values are (r 0.204 g 0.596 b 0.859 a 1.0) */
		case peterRiverColor = "3498DB"
		/** Flat color object whose RGBA values are (r 0.161 g 0.502 b 0.725 a 1.0) */
		case belizeHoleColor = "2980B9"
		/** Flat color object whose RGBA values are (r 0.608 g 0.349 b 0.714 a 1.0) */
		case amethystColor = "9B59B6"
		/** Flat color object whose RGBA values are (r 0.557 g 0.267 b 0.678 a 1.0) */
		case wisteriaColor = "8E44AD"
		/** Flat color object whose RGBA values are (r 0.204 g 0.286 b 0.369 a 1.0) */
		case wetAsphaltColor = "34495E"
		/** Flat color object whose RGBA values are (r 0.173 g 0.243 b 0.314 a 1.0) */
		case midnightBlueColor = "2C3E50"
		/** Flat color object whose RGBA values are (r 0.945 g 0.769 b 0.059 a 1.0) */
		case sunflowerColor = "F1C40F"
		/** Flat color object whose RGBA values are (r 0.953 g 0.612 b 0.071 a 1.0) */
		case flatOrangeColor = "F39C12"
		/** Flat color object whose RGBA values are (r 0.902 g 0.494 b 0.133 a 1.0) */
		case carrotColor = "E67E22"
		/** Flat color object whose RGBA values are (r 0.827 g 0.329 b 0.0 a 1.0) */
		case pumpkinColor = "D35400"
		/** Flat color object whose RGBA values are (r 0.906 g 0.298 b 0.235 a 1.0) */
		case alizarinColor = "E74C3C"
		/** Flat color object whose RGBA values are (r 0.753 g 0.224 b 0.169 a 1.0) */
		case pomegranateColor = "C0392B"
		/** Flat color object whose RGBA values are (r 0.925 g 0.941 b 0.945 a 1.0) */
		case cloudsColor = "ECF0F1"
		/** Flat color object whose RGBA values are (r 0.741 g 0.765 b 0.78 a 1.0) */
		case silverColor = "BDC3C7"
		/** Flat color object whose RGBA values are (r 0.584 g 0.647 b 0.651 a 1.0) */
		case concreteColor = "95A5A6"
		/** Flat color object whose RGBA values are (r 0.498 g 0.549 b 0.553 a 1.0) */
		case asbestosColor = "7F8C8D"
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case greenSeaColor:
				return GKColor(hexString: greenSeaColor.rawValue)
			case emeraldColor:
				return GKColor(hexString: emeraldColor.rawValue)
			case nephritisColor:
				return GKColor(hexString: nephritisColor.rawValue)
			case peterRiverColor:
				return GKColor(hexString: peterRiverColor.rawValue)
			case belizeHoleColor:
				return GKColor(hexString: belizeHoleColor.rawValue)
			case amethystColor:
				return GKColor(hexString: amethystColor.rawValue)
			case wisteriaColor:
				return GKColor(hexString: wisteriaColor.rawValue)
			case wetAsphaltColor:
				return GKColor(hexString: wetAsphaltColor.rawValue)
			case midnightBlueColor:
				return GKColor(hexString: midnightBlueColor.rawValue)
			case sunflowerColor:
				return GKColor(hexString: sunflowerColor.rawValue)
			case flatOrangeColor:
				return GKColor(hexString: flatOrangeColor.rawValue)
			case carrotColor:
				return GKColor(hexString: carrotColor.rawValue)
			case pumpkinColor:
				return GKColor(hexString: pumpkinColor.rawValue)
			case alizarinColor:
				return GKColor(hexString: alizarinColor.rawValue)
			case pomegranateColor:
				return GKColor(hexString: pomegranateColor.rawValue)
			case cloudsColor:
				return GKColor(hexString: cloudsColor.rawValue)
			case silverColor:
				return GKColor(hexString: silverColor.rawValue)
			case concreteColor:
				return GKColor(hexString: concreteColor.rawValue)
			case asbestosColor:
				return GKColor(hexString: asbestosColor.rawValue)
			}
		}
	}
}