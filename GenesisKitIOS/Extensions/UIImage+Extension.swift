//
//  UIImage+Extension.swift
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
import UIKit


/**
 Extensions of UIImage
*/
public extension UIImage {
	
	/**
	Creates a UIImage for a MenuImage
 
	:param: color Color of the Menu Image
	:param: shadow Optional Shadown (Default: true)
	:param: size Optonal CGSize (Default: 44,44px)
	
	:returns: A UIImage Object
	*/
	class func menuImage(color : UIColor, shadow: Bool = true, size: CGSize = CGSizeMake(44, 44) ) -> UIImage {
		
		UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
		let thinkness = (size.height - (size.height/5)) / 5
		let secondrow = thinkness * 2
		let thirdrow = thinkness * 2 + secondrow
		var shadowStroke: CGFloat = 0
		let spacing = size.width * 0.2
		let longWidth = size.width * 0.7 //The top and bottom bar
		let midWidth = size.width * 0.5  //The Middle bar
		
		if shadow {
			shadowStroke = 0.7
			UIColor.blackColor().setFill()
			UIBezierPath(rect: CGRectMake(0, 0, size.width/10, shadowStroke)).fill()
			UIBezierPath(rect: CGRectMake(spacing, 0, longWidth, shadowStroke)).fill()
			
			UIBezierPath(rect: CGRectMake(0, secondrow, size.width/10, shadowStroke)).fill()
			UIBezierPath(rect: CGRectMake(spacing, secondrow, midWidth, shadowStroke)).fill()
			
			UIBezierPath(rect: CGRectMake(0, thirdrow, size.width/10, 1)).fill()
			UIBezierPath(rect: CGRectMake(spacing, thirdrow, longWidth, shadowStroke)).fill()
		}
		
		color.setFill()
		UIBezierPath(rect: CGRectMake(0, shadowStroke, size.width/10, thinkness)).fill()
		UIBezierPath(rect: CGRectMake(spacing, 1, longWidth, thinkness)).fill()
		
		UIBezierPath(rect: CGRectMake(0, secondrow + shadowStroke, size.width/10, thinkness)).fill()
		UIBezierPath(rect: CGRectMake(spacing, secondrow + shadowStroke, midWidth, thinkness)).fill()
		
		UIBezierPath(rect: CGRectMake(0, thirdrow + shadowStroke, size.width/10, thinkness)).fill()
		UIBezierPath(rect: CGRectMake(spacing, thirdrow + shadowStroke , longWidth, thinkness)).fill()
		
		let menu = UIGraphicsGetImageFromCurrentImageContext()
		UIGraphicsEndImageContext()
		
		return menu
	}
	
	/**
	Creates a UIImage Object of the specified size and color
 
	:param: size The size of the Image
	:param: color Color of the Image
	
	:returns: A UIImage Object
	*/
	class func drawImage(size: CGSize, color: UIColor) -> UIImage {
		
		UIGraphicsBeginImageContext(size)
		let currentContext = UIGraphicsGetCurrentContext()
		let fillRect = CGRectMake(0,0,size.width,size.height)
		CGContextSetFillColorWithColor(currentContext, color.CGColor)
		CGContextFillRect(currentContext, fillRect)
		
		let image = UIGraphicsGetImageFromCurrentImageContext()
		UIGraphicsEndImageContext()
		
		return image
	}
	
	/**
	Creates a UIImage Object of 1px in Size
 
	:param: color Color of the UIImage object
	
	:returns: A UIImage Object
	*/
	class func imageFromColor(color: UIColor) -> UIImage {
		let rect = CGRectMake(0, 0, 1, 1)
		UIGraphicsBeginImageContext(rect.size);
		let currentContext = UIGraphicsGetCurrentContext()
		CGContextSetFillColorWithColor(currentContext, color.CGColor);
		CGContextFillRect(currentContext, rect);
		
		let image = UIGraphicsGetImageFromCurrentImageContext()
		UIGraphicsEndImageContext()
		
		return image
	}
	
	/**
	Adds a Radius to UIImage Object
 
	:param: radius The radius to add to the Image
	
	:returns: A UIImage Object
	*/
	func addRadius(radius: CGFloat) -> UIImage {
		UIGraphicsBeginImageContextWithOptions(self.size, false, 0.0);
		let currentContext = UIGraphicsGetCurrentContext()
		
		let pi = CGFloat(M_PI)
		//Clip image
		CGContextBeginPath(currentContext);
		CGContextMoveToPoint(currentContext, 0.0, radius);
		CGContextAddLineToPoint(currentContext, 0.0, self.size.height - radius);
		CGContextAddArc(currentContext, radius, self.size.height - radius, radius, pi, pi / 2.0, 1);
		CGContextAddLineToPoint(currentContext, self.size.width - radius, self.size.height);
		CGContextAddArc(currentContext, self.size.width - radius, self.size.height - radius, radius, pi / 2.0, 0.0, 1);
		CGContextAddLineToPoint(currentContext, self.size.width, radius);
		CGContextAddArc(currentContext, self.size.width - radius, radius, radius, 0.0, -pi / 2.0, 1);
		CGContextAddLineToPoint(currentContext, radius, 0.0);
		CGContextAddArc(currentContext, radius, radius, radius, -pi / 2.0, pi, 1);
		CGContextClip(currentContext);
		
		//draw image
		self.drawAtPoint(CGPointZero)
		
		let image = UIGraphicsGetImageFromCurrentImageContext()
		UIGraphicsEndImageContext()
		
		return image
	}
	
	/**
	Adds Alpha to UIImage Object
 
	:param: alpha The value of alpha to add to the Image
	
	:returns: A UIImage Object
	*/
	func addAlpha(alpha: CGFloat ) -> UIImage {
		
		UIGraphicsBeginImageContextWithOptions(self.size, false, 0.0);
		
		self.drawAtPoint(CGPointZero, blendMode: kCGBlendModeNormal, alpha: alpha)
		
		let image = UIGraphicsGetImageFromCurrentImageContext()
		UIGraphicsEndImageContext()
		
		return image
	}
	
	/**
	Mask Image with Image
 
	:param: image The image to use as a Mask
	
	:returns: A UIImage Object
	*/
	func addImageMask(image: UIImage ) -> UIImage {
		
		//create drawing context
		UIGraphicsBeginImageContextWithOptions(self.size, false, 0.0);
		let currentContext = UIGraphicsGetCurrentContext()
		
		CGContextClipToMask(currentContext, CGRectMake(0.0, 0.0, self.size.width, self.size.height), image.CGImage);
		self.drawAtPoint(CGPointZero)
		
		//capture resultant image
		let image = UIGraphicsGetImageFromCurrentImageContext()
		UIGraphicsEndImageContext()
		
		return image
	}
	
	/**
	Add Shadow Effect to Image
 
	:param: color The color of the shadow
	:param: offset The offset for the shadow (Default: 2.0,2.0)
	:param: blur The amount of blur (Default: 4.0)
	
	:returns: A UIImage Object
	*/
	func addShadow(color: UIColor, offset: CGSize = CGSizeMake(2.0, 2.0), blur: Float = 4.0) -> UIImage {
		let W = fabsf(Float(offset.width)) + blur
		let H = fabsf(Float(offset.height)) + blur
		
		let border = CGSizeMake(CGFloat(W), CGFloat(H))
		let size = CGSizeMake(self.size.width + border.width * 2.0, self.size.height + border.height * 2.0);
		
		UIGraphicsBeginImageContextWithOptions(size, false, 0.0);
		let currentContext = UIGraphicsGetCurrentContext()
		
		//set up shadow
		CGContextSetShadowWithColor(currentContext, offset, CGFloat(blur), color.CGColor)
		
		self.drawAtPoint(CGPointMake(border.width, border.height))
		
		let image = UIGraphicsGetImageFromCurrentImageContext()
		UIGraphicsEndImageContext()
		
		return image
	}
	
	
}
