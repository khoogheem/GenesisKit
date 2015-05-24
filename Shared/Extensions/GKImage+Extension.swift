//
//  GKImage+Extension.swift
//  GenesisKit
//
//  Created by Kevin A. Hoogheem on 11/8/14.
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
 iOS & OSX Extensions of GKImage
*/
public extension GKImage {
	
	/**
	Resizes the image
	
	:param: newSize The NewSize of the iamge
	:param: opaque An Optional Bool if image is opaque.  Default is false
	:returns: A UIImage of the newSize
	*/
	public func sizeImage(# newSize: CGSize, opaque: Bool = false) -> GKImage {
		
		let scale: CGFloat = 0.0 // Automatically use scale factor of main screen
		var scaledImage: GKImage
		
		#if os(iOS)
			UIGraphicsBeginImageContextWithOptions(newSize, opaque, scale)

			self.drawInRect(CGRect(origin: CGPointZero, size: newSize))
			scaledImage = UIGraphicsGetImageFromCurrentImageContext()
			
		#elseif os(OSX)

			let colorSpace:CGColorSpace = CGColorSpaceCreateDeviceRGB()
			let bitmapInfo = CGBitmapInfo(CGImageAlphaInfo.PremultipliedLast.rawValue)
			let context = CGBitmapContextCreate(nil, Int(newSize.width), Int(newSize.height), 8, 0, colorSpace, bitmapInfo)
            

			let imageRef = CGBitmapContextCreateImage(context)
			scaledImage = GKImage(CGImage: imageRef, size: newSize)

		#endif

		return scaledImage
	}
	
	/**
	Tints the Image with the specified color
	
	:param: color The color to tint the image
	:returns: The UIImage of the tinted color
	*/
	public func tint(# color: GKColor) -> GKImage {
	
		#if os(iOS)

			// lets tint the icon - assumes your icons are black
			UIGraphicsBeginImageContextWithOptions(self.size, false, 0.0)
			let context = UIGraphicsGetCurrentContext()
			
			CGContextTranslateCTM(context, 0, self.size.height)
			CGContextScaleCTM(context, 1.0, -1.0)
			
			let rect = CGRectMake(0, 0, self.size.width, self.size.height)
			
			// draw alpha-mask
			CGContextSetBlendMode(context, kCGBlendModeNormal)
			CGContextDrawImage(context, rect, self.CGImage)
			
			// draw tint color, preserving alpha values of original image
			CGContextSetBlendMode(context, kCGBlendModeSourceIn)
			color.setFill()
			CGContextFillRect(context, rect)
			
			let coloredImage = UIGraphicsGetImageFromCurrentImageContext()
			UIGraphicsEndImageContext()
			
			return coloredImage
		
		#elseif os(OSX)
			
			self.lockFocus()
			color.set()
			
			let myRect: NSRect =  CGRectMake(0, 0, self.size.width, self.size.height)
			
			NSRectFillUsingOperation(myRect, NSCompositingOperation.CompositeSourceAtop)
			
			self.unlockFocus()
			
			return self
		#endif

	}

}
