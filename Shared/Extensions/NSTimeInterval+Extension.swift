//
//  NSTimeInterval+Extension.swift
//  GenesisKit
//
//  Created by Kevin A. Hoogheem on 10/19/14.
//
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

/**
  Extensions to NSTimeInterval
 */
extension NSTimeInterval {
	
	var seconds: NSTimeInterval { return self }
	var second: NSTimeInterval { return self.seconds }
	
	var minutes: NSTimeInterval { return self * 60 }
	var minute: NSTimeInterval { return self.minutes }
	
	var hours: NSTimeInterval { return self.minutes * 60}
	var hour: NSTimeInterval { return self.hours }
	
	var days: NSTimeInterval {return self.hours * 24}
	var day: NSTimeInterval { return self.days }
	
	var months: NSTimeInterval {return self.days * 31}
	var month: NSTimeInterval { return self.months }
	
	var years: NSTimeInterval { return self.months * 12}
	var year: NSTimeInterval { return self.years }
	
	var ago: NSDate {return NSDate(timeIntervalSinceNow: -self)}
	
	var fromNow: NSDate {return NSDate(timeIntervalSinceNow: self)}
}
