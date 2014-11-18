//
//  DirectoryManagerTest.swift
//  GenesisKit
//
//  Created by Kevin A. Hoogheem on 11/18/14.
//  Copyright (c) 2014 Kevin A. Hoogheem. All rights reserved.
//

import XCTest
import GenesisKitIOS

class DirectoryManagerTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

	
	func testDocumentDirectoryPath() {
		let docPath = DirectoryManager.documentDirectoryPath.lastPathComponent
		XCTAssert(docPath == "Documents", "Document Directory Path should be 'Documents'")
	}
	
	func testLibraryDirectoryPath() {
		let docPath = DirectoryManager.libraryDirectoryPath.lastPathComponent
		XCTAssert(docPath == "Library", "Document Directory Path should be 'Library'")
	}

	func testCachesDirectoryPath() {
		let docPath = DirectoryManager.cachesDirectoryPath

		var components:[String] = docPath.pathComponents
		components.removeRange(0..<(components.count-2))
		let cachdir = NSString.pathWithComponents(components)
		
		XCTAssert(cachdir == "Library/Caches", "Document Directory Path should be 'Library/Caches'")
	}
	
	func testAppSupportDirectoryPath() {
		let docPath = DirectoryManager.appSupportDirectoryPath
		
		var components:[String] = docPath.pathComponents
		components.removeRange(0..<(components.count-2))
		let dir = NSString.pathWithComponents(components)
		
		XCTAssert(dir == "Library/Application Support", "Document Directory Path should be 'Library/Application Support'")
	}


}
