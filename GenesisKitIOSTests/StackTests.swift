//
//  StackTests.swift
//  GenesisKit
//
//  Created by Kevin A. Hoogheem on 11/6/14.
//  Copyright (c) 2014 Kevin A. Hoogheem. All rights reserved.
//

import UIKit
import XCTest
import GenesisKitIOS

/*
class StackTests: XCTestCase {
	var MyStack:Stack<String> = Stack<String>()
	let items = (1...1000).map { $0 }

	
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
		buildStack()
	}
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
	
	func buildStack() {
		MyStack.push("test")
		MyStack.push("test1")
		MyStack.push("test2")
		MyStack.push("test3")
		MyStack.push("test4")
		MyStack.push("test5")
		MyStack.push("test6")
	}

	func testStackCreated() {
        // This is an example of a functional test case.
		XCTAssertTrue(MyStack.count == 7, "Stack tested out with 7 objects")
    }
	
	func testStackPopPush() {
		// This is an example of a functional test case.
		MyStack.pop()
		XCTAssertTrue(MyStack.count == 6, "Stack did Pop and should have 6 items")
		
		MyStack.push("test#6")
		XCTAssertTrue(MyStack.count == 7, "Stack did Push and should have 7 items")

		//Lets see if we can pop more then we should
		var count = MyStack.count + 1
		while count != 0 {
			count--
			MyStack.pop()
		}
		
	}

	func testRemoveStack() {
		MyStack.removeAll()
		XCTAssertTrue(MyStack.count == 0, "Stack should be empty right now")
	}
	
	func testIndexOfObject() {
		if MyStack.count == 0 {
			buildStack()
		}

		let idx = MyStack.indexOfObject("test5")
		XCTAssertTrue(idx == 5, "Stack index should be 5")

	}
	
	func testLoopStack() {
		if MyStack.count == 0 {
			buildStack()
		}
		
		if let obj = MyStack.pop() {
			XCTAssertTrue(obj == "test6", "Stack object should be test6")
		}else {
			let obj = MyStack.pop()
			XCTAssertNotNil(obj, "Stacks object should not be nil")
		}

	}

	//MARK: Performance Tests
	func testPerformanceMap() {
		// This is an example of a performance test case.
		self.measureBlock() {
			// Put the code you want to measure the time of here.
			var simpleStack = Stack<Int>()
			self.items.map { simpleStack.push($0) }
			
		}
	}
	
	func testPerformanceRange() {
		// This is an example of a performance test case.
		self.measureBlock() {
			// Put the code you want to measure the time of here.
			var simpleStack = Stack<Int>()
			for i in 0..<self.items.count {
				simpleStack.push(self.items[i])
			}
		}
	}

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
			var simpleStack = Stack<Int>()
			
			for idx in 0...10000 {
				simpleStack.push(idx)
			}
        }
    }
	
}
*/
