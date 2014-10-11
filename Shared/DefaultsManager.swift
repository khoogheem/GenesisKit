//
//  DefaultsManager.swift
//  GenesisKit
//
//  Created by Kevin A. Hoogheem on 10/10/14.
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


private var defaults = Dictionary<String, AnyObject>()
private var sDebug: Bool = false


/** DefaultsManager - Manager of defaults.

 DefaultsManager allows you to manage system wide default settings using a key-value storage.
 */
public class DefaultsManager : NSObject {
	
	//Override the initialization and add in some Default Style
	override public class func initialize() {
		super.initialize()
		
		DefaultsManager.set("GenesisKit.useMetric", value: false)
		DefaultsManager.set("GenesisKit.standardFontName", value: "Helvetica")
		DefaultsManager.set("GenesisKit.standardBoldFontName", value: "Helvetica-Bold")
	}
	
	class func debug(debug:Bool) {
		sDebug = debug
	}
	
	/** 
	 Set - Given a Key-Value pair will set the Default
	 
	 :param: key The `key` name for the Default setting
	 :param: value The `value` of the `key` for the Default setting
	 */
	class func set(key:String, value:AnyObject){
		if let unwrappedPreviousValue: AnyObject = defaults.updateValue(value, forKey: key) {
			if (sDebug){
				NSLog("Replaced the previous value: \(unwrappedPreviousValue) with: \(value) for key: \(key)")
			}
		} else {
			if (sDebug){
				NSLog("Added a new value : \(value) for style: \(key)")
			}
		}
	}
	
	/** 
	 Get - Given a key it will return its value from the DefaultsManager
	 
	 :param: key - The `key` for which value you are wanting returned
	 :returns: A value based on the `key` passed in.  May be a `nil` value.
	 */
	class func get(key:String) -> AnyObject?{
		let obj: AnyObject? = defaults[key]    //retrieve value
		
		return obj?
	}
	
	/** 
	 Reset - Resets the Defaults Key-value storage to its default state
	 
	 */
	class func reset() {
		defaults.removeAll(keepCapacity: false)
	}
	
	/** 
	 RemoveDefault - Removes the Key-Value pair from the defaults.
	 
	 :param: key The Key for the Default you wish to remove
	 */
	class func removeDefault (key:String) {
		defaults.removeValueForKey(key)
	}
}
