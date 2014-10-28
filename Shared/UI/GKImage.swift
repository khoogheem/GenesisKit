//
//  GKImage.swift
//  GenesisKit
//
//  Created by Kevin A. Hoogheem on 10/28/14.
//  Copyright (c) 2014 Kevin A. Hoogheem. All rights reserved.
//

// Provide a typealias for a Images.
#if os(iOS)
	public typealias GKImage = UIImage
#elseif os(OSX)
	public typealias GKImage = NSImage
#endif
