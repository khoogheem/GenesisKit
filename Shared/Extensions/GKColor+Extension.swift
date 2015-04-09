//
//  GKColor+Extension.swift
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
  iOS & OSX Extensions of GKColor
*/
public extension GKColor {
	
	//MARK: - INITS
	/**
	Create a color with in the given hex value
	Alpha will be set as 1 by default
	
	:param: hex - A value in HEX
	:param: alpha - The Alpha Value (default: 1.0)
	:returns: A GKColor that represents the HEX Value
	*/
	public convenience init(hex: UInt32, alpha: Float = 1.0) {
		let r = CGFloat(hex >> 16 & 0xFF) / 255.0
		let g = CGFloat(hex >> 8 & 0xFF) / 255.0
		let b = CGFloat(hex & 0xFF) / 255.0

		self.init(red: r, green: g, blue: b, alpha: CGFloat(alpha))
	}

	/**
	Create a color with in the given hex string
	Alpha will be set as 1 by default
	
	:param: hexString - A string hex value
	:param: alpha - The Alpha Value (default: 1.0)
	:returns: A GKColor that represents the HEX String
	*/
	public convenience init(hexString: String, alpha: Float = 1.0) {
		var hex = hexString
		
		// Check for hash and remove the hash
		if hexString.hasPrefix("#") {
			hex = hex.substringFromIndex(advance(hex.startIndex, 1))
		}
		
		// Check for string length
		assert(count(hex) == 6 || count(hex) == 3, "HEX Colors must be no more then 5 and no less then 3")
		
		var hexNum: UInt32 = 0
		NSScanner(string: hex).scanHexInt(&hexNum)
		
		self.init(hex:hexNum, alpha: alpha)
	}

	//MARK: - Functions
	/**
	A Random color generator.
	
	:returns: A Random color
	*/
	public class func random() -> GKColor {
		return GKColor(red: randomFloat(), green: randomFloat(), blue: randomFloat(), alpha: 1.0)
	}
	
	/**
	Provides the HSBA values of a given color.
	
	:returns: hue, saturation, brigtness, alpha values of the given color
	*/
	public func hsba()->(hue:CGFloat, saturation:CGFloat, brightness:CGFloat, alpha:CGFloat){
		var h:CGFloat = 0.0;
		var s:CGFloat = 0.0;
		var b:CGFloat = 0.0;
		var a:CGFloat = 1.0;
		self.getHue(&h, saturation:&s, brightness:&b, alpha:&a);
		
		//Round off to 3 points like Apple does
		return (hue:round(h * 1000.0)/1000.0, saturation:round(s * 1000.0)/1000.0, brightness:round(b * 1000.0)/1000.0, alpha:a)
	}
	
	/**
	Provides the RBGA values of a given color.
	
	:returns: red, green, blue, alpha values of the given color
	*/
	public func rgba()->(red:CGFloat, green:CGFloat, blue:CGFloat, alpha:CGFloat) {
		var r:CGFloat = 0.0;
		var g:CGFloat = 0.0;
		var b:CGFloat = 0.0;
		var a:CGFloat = 0.0;
		self.getRed(&r, green: &g, blue: &b, alpha: &a);

		//Round off to 3 points like Apple does
		return (red:round(r * 1000.0)/1000.0, green:round(g * 1000.0)/1000.0, blue:round(b * 1000.0)/1000.0, alpha:a)
	}
	
	/**
	Provides a suitable text color based on the evaluated color.
	
	:returns: A either a dark or lightTextColor based on the evaluation
	*/
	public func readableColor() -> GKColor {
		//Per W3C http://www.w3.org/WAI/ER/WD-AERT/#color-contrast
		let (r,b,g,a) = self.rgba()
		
		if CGColorEqualToColor(self.CGColor, GKColor.blackColor().CGColor){
			return GKColor.whiteColor()
		}
		
		let redscore = ((r*255) * 299)
		let greenscore = ((g*255) * 587)
		let bluescore = ((b*255) * 114)
		let darknessScore = (redscore + greenscore + bluescore) / 1000
		
		#if os(iOS)
			if darknessScore >= 125 {
			return GKColor.darkTextColor()
			}
			return GKColor.lightTextColor()
		#elseif os(OSX)
			if darknessScore >= 125 {
				return GKColor.blackColor()
			}
			return GKColor.whiteColor()
		#endif

	}

	/**
	Provides a darker color of the given color.
	
	:param: step - The amount to step up the color (default: 0.25)
	:returns: A darker color by the step amount
	*/
	public func darkerColor(step:Float = 0.25) -> GKColor {
		let (hue, saturation, brightness, alpha) = self.hsba();
		let addedBrightness = 1.0 - CGFloat(step);
		let newBrightness = brightness * addedBrightness;
		return GKColor(hue: hue, saturation: saturation, brightness: newBrightness, alpha: alpha);
		
	}
	
	/**
	Provides a lighter color of the given color.
	
	:param: step - The amount to step up the color (default: 0.25)
	:returns: A lighter color by the step amount
	*/
	public func lighterColor(step:Float = 0.25) -> GKColor {
		let (hue, saturation, brightness, alpha) = self.hsba();
		let addedBrightness = 1.0 + CGFloat(step);
		let newBrightness = min(brightness * addedBrightness, 1.0);
		return GKColor(hue: hue, saturation: saturation, brightness: newBrightness, alpha: alpha);
	}

	
	//MARK: - Private Functions
	private class func randomFloat() -> CGFloat {
		let random: CGFloat = CGFloat(arc4random_uniform(255)) / 255.0
		return random
	}
	

}
