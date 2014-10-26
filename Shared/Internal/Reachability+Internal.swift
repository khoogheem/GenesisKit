//
//  Reachability+Internal.swift
//  GenesisKit
//
//  Created by Kevin A. Hoogheem on 10/26/14.
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
import SystemConfiguration


let ReachabilityChangedNotification = "ReachabilityChangedNotification"

/**
	Internal Reachability Class to determine the reachability of network
*/
class Reachability {
	//TODO: Add in the Start Notifier/stop Notifier
	//TODO: Make it a shared instance
	let kShouldPrintReachabilityFlags = true

	enum NetworkStatus {
		case NotReachable
		case ReachableViaWiFi
		case ReachableViaWWAN
		case ReachableViaEthernet
	}
	
	private var status:NetworkStatus = .NotReachable
	private var reachabilityRef: SCNetworkReachability?
	private var reachabilitySerialQueue: dispatch_queue_t?
	private var reachabilityObject: AnyObject?
	var alwaysReturnWIFIStatus: Bool = false
	
	
	init(reachabilityRef: SCNetworkReachability) {
		self.reachabilityRef = reachabilityRef;
	}
	
	convenience init(hostname: String) {
		let ref = SCNetworkReachabilityCreateWithName(nil, (hostname as NSString).UTF8String).takeRetainedValue()
		self.init(reachabilityRef: ref)
	}
	
	convenience init(hostAddress: UnsafePointer<sockaddr>) {
		let ref = SCNetworkReachabilityCreateWithAddress(kCFAllocatorDefault, hostAddress).takeRetainedValue()
		self.init(reachabilityRef: ref)
	}
	
	convenience init() {
		var addr = sockaddr_in(sin_len: __uint8_t(sizeof(sockaddr_in)), sin_family: sa_family_t(AF_INET),
			sin_port: in_port_t(0), sin_addr: in_addr(s_addr: inet_addr("0.0.0.0")), sin_zero: (0, 0, 0, 0, 0, 0, 0, 0))
		
		var sock_addr = sockaddr(sa_len: 0, sa_family: 0, sa_data: (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0))
		memcpy(&sock_addr, &addr, UInt(sizeof(sockaddr_in)))
		
		let ref = SCNetworkReachabilityCreateWithAddress(kCFAllocatorDefault, &sock_addr).takeRetainedValue()
		self.init(reachabilityRef: ref)
	}
	
	func PrintReachabilityFlags(flags: SCNetworkReachabilityFlags, comment: String) {
		if kShouldPrintReachabilityFlags {
			#if os(iOS)
				let W = checkFlag(SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsIsWWAN)) ? "W" : "-"
				#elseif os(OSX)
				let W = "X"
			#endif
			let R = checkFlag(SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsReachable)) ? "R" : "-"
			
			let t = checkFlag(SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsTransientConnection)) ? "t" : "-"
			let c = checkFlag(SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsConnectionRequired))  ? "c" : "-"
			let C = checkFlag(SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsConnectionOnTraffic)) ? "C" : "-"
			
			let i = checkFlag(SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsInterventionRequired)) ? "i" : "-"
			let D = checkFlag(SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsConnectionOnDemand)) ? "D" : "-"
			let l = checkFlag(SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsIsLocalAddress)) ? "l" : "-"
			let d = checkFlag(SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsIsDirect)) ? "d" : "-"
			
			NSLog("Reachability Flag Status: \(W)\(R) \(t)\(c)\(C)\(i)\(D)\(l)\(d) Comment: \(comment)")
		}
	}
	
	
	func localWiFiStatusForFlags(flags:SCNetworkReachabilityFlags) -> NetworkStatus {
		var returnValue: NetworkStatus = .NotReachable
		PrintReachabilityFlags(flags, comment: "networkStatusForWIFIFlags");
		
		if checkFlag(SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsReachable)) && checkFlag(SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsIsDirect)) {
			returnValue = .ReachableViaWiFi
		}
		
		return returnValue
	}
	
	func networkStatusForFlags(flags:SCNetworkReachabilityFlags) -> NetworkStatus {
		PrintReachabilityFlags(flags, comment: "networkStatusForFlags");
		var returnValue: NetworkStatus = .NotReachable
		
		if (checkFlag(SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsReachable)) == false){
			// The target host is not reachable.
			return returnValue
		}
		
		if checkFlag(SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsConnectionOnDemand)) ||
			checkFlag(SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsConnectionOnTraffic)) {
				/*
				... and the connection is on-demand (or on-traffic) if the calling application is using the CFSocketStream or higher APIs...
				*/
				
				if (checkFlag(SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsReachable)) == false) {
					/*
					... and no [user] intervention is needed...
					*/
					returnValue = .ReachableViaWiFi;
				}
		}
		
		
		#if os(iOS)
			if ((Int(flags) & kSCNetworkReachabilityFlagsIsWWAN) == kSCNetworkReachabilityFlagsIsWWAN) {
			/*
			... but WWAN connections are OK if the calling application is using the CFNetwork APIs.
			*/
			returnValue = .ReachableViaWWAN;
			}
			#elseif os(OSX)
			if (checkFlag(SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsReachable))) {
				/*
				... on OS lets just cheach Reacable.
				*/
				returnValue = .ReachableViaEthernet;
			}
		#endif
		
		
		return returnValue
	}
	
	func connectedToNetwork() -> Bool {
		PrintReachabilityFlags(reachabilityFlags, comment: "networkStatusForFlags");
		
		var needsConnection: Bool {
			return Int(reachabilityFlags) & kSCNetworkFlagsConnectionRequired == kSCNetworkFlagsConnectionRequired
		}
		var isReachable: Bool {
			return Int(reachabilityFlags) & kSCNetworkReachabilityFlagsReachable == kSCNetworkReachabilityFlagsReachable
		}
		
		return (isReachable && !needsConnection) ? true : false
	}
	
	
	func isReachable() -> Bool {
		switch currentReachabilityStatus {
		case .NotReachable:
			return false
		case .ReachableViaWiFi:
			fallthrough
		case .ReachableViaWWAN:
			fallthrough
		case .ReachableViaEthernet:
			return true
		default:
			return false
		}
	}
	
	var currentReachabilityStatus:NetworkStatus {
		
		if reachabilityFlags != 0 {
			if alwaysReturnWIFIStatus {
				status = localWiFiStatusForFlags(reachabilityFlags)
			}else {
				status = networkStatusForFlags(reachabilityFlags)
			}
		}
		
		return status
	}
	
	
	//Mark: private
	private var reachabilityFlags: SCNetworkReachabilityFlags {
		var flags: SCNetworkReachabilityFlags = 0
		let gotFlags = SCNetworkReachabilityGetFlags(reachabilityRef, &flags) != 0
		if gotFlags {
			return flags
		}
		return 0
	}
	
	private func checkFlag(flag: SCNetworkReachabilityFlags) -> Bool {
		switch flag {
		case SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsIsWWAN):
			if reachabilityFlags & SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsIsWWAN) != 0 {
				return true
			}
		case SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsReachable):
			if reachabilityFlags & SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsReachable) != 0 {
				return true
			}
		case SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsTransientConnection):
			if reachabilityFlags & SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsTransientConnection) != 0 {
				return true
			}
		case SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsConnectionRequired):
			if reachabilityFlags & SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsConnectionRequired) != 0 {
				return true
			}
		case SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsConnectionOnTraffic):
			if reachabilityFlags & SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsConnectionOnTraffic) != 0 {
				return true
			}
		case SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsInterventionRequired):
			if reachabilityFlags & SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsInterventionRequired) != 0 {
				return true
			}
		case SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsConnectionOnDemand):
			if reachabilityFlags & SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsConnectionOnDemand) != 0 {
				return true
			}
		case SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsIsLocalAddress):
			if reachabilityFlags & SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsIsLocalAddress) != 0 {
				return true
			}
		case SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsIsDirect):
			if reachabilityFlags & SCNetworkReachabilityFlags(kSCNetworkReachabilityFlagsIsDirect) != 0 {
				return true
			}
		default:
			return false
		}
		return false
	}
	
	
	deinit {
		reachabilityRef = nil
	}
	
}