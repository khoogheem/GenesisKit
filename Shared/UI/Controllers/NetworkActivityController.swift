//
//  NetworkActivityController.swift
//  GenesisKit
//
//  Created by Kevin A. Hoogheem on 10/19/14.
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
#endif

/**
	NetworkActivityController manages the network activity indicator for iOS devices.  On OSX it provides a isActive variable to determine if someone is accessing the network.
*/
@objc public class NetworkActivityController {
	
	/**
	 The NetworkActivityController singleton
	*/
	public class var sharedActivity : NetworkActivityController {
		struct Static {
			static var onceToken : dispatch_once_t = 0
			static var instance : NetworkActivityController? = nil
		}
		dispatch_once(&Static.onceToken) {
			Static.instance = NetworkActivityController()
		}
		return Static.instance!
	}

	/**
	Determines if there is current network acvitiy.  For OSX this can be used to display network activity
	*/
	public var isActive:Bool {
		get {
			return activity
		}
	}
	

	/**
	 Push a NetworkActivity to the stack.
	 While there is items in the stack the Network Activity Indicator will be visible
	*/
	public func push() {
		withUnsafeMutablePointer(&spinLock, OSSpinLockLock)
		
		numberOfRegisteredActivities += 1
		//Lets let the didset of numberOfRegisteredActivities do the work.
//		if numberOfRegisteredActivities > 0 {
//			UIApplication.sharedApplication().networkActivityIndicatorVisible = true
//		}
		
		withUnsafeMutablePointer(&spinLock, OSSpinLockUnlock)
	}
	
	/**
	 Pop a registered NetworkActiity from the stack.
	 When no more activity is registered it will stop the network activity from being visible
	*/
	public func pop() {
		withUnsafeMutablePointer(&spinLock, OSSpinLockLock)
		
		let newValue = numberOfRegisteredActivities - 1
		numberOfRegisteredActivities = newValue >= 0 ? newValue : 0
//		if numberOfRegisteredActivities == 0 {
//			UIApplication.sharedApplication().networkActivityIndicatorVisible = false
//		}
		
		withUnsafeMutablePointer(&spinLock, OSSpinLockUnlock)
	}
	
	//MARK: Private
	private var spinLock = OS_SPINLOCK_INIT
	private var activity: Bool = false
	
	/// The number of activities in progress. If the number is greater than 0, the network activity indicator is visible (unless modified by an external source).
	private var numberOfRegisteredActivities: Int = 0 {
		didSet {
			if numberOfRegisteredActivities != oldValue {
				numberOfRegisteredActivitiesChanged()
			}
		}
	}
	
	/* Listens to the change from numberOfRegisteredActivities and acts upon that change */
	private func numberOfRegisteredActivitiesChanged() {
		#if os(iOS)
			if numberOfRegisteredActivities > 0 {
				UIApplication.sharedApplication().networkActivityIndicatorVisible = true
			}
			if numberOfRegisteredActivities == 0 {
				UIApplication.sharedApplication().networkActivityIndicatorVisible = false
			}
		#endif
		if numberOfRegisteredActivities > 0 {
			activity = true
		}
		if numberOfRegisteredActivities == 0 {
			activity = false
		}
		
	}
}