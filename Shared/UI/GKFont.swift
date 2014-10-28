//
//  GKFont.swift
//  GenesisKit
//
//  Created by Kevin A. Hoogheem on 10/28/14.
//  Copyright (c) 2014 Kevin A. Hoogheem. All rights reserved.
//

// Provide a typealias for a platform Font.
#if os(iOS)
	public typealias GKFont = UIFont
	#elseif os(OSX)
	public typealias GKFont = NSFont
#endif
