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
  iOS & OSX Extensions to NSTimeInterval
 */
public extension NSTimeInterval {
	
	/** A NSTimeInterval value in Seconds */
	var seconds: NSTimeInterval { return self }
	/** A NSTimeInterval value in Seconds */
	var second: NSTimeInterval { return self.seconds }
	
	/** A NSTimeInterval value in Minutes */
	var minutes: NSTimeInterval { return self * 60 }
	/** A NSTimeInterval value in Minutes */
	var minute: NSTimeInterval { return self.minutes }
	
	/** A NSTimeInterval value in Hours */
	var hours: NSTimeInterval { return self.minutes * 60}
	/** A NSTimeInterval value in Hours */
	var hour: NSTimeInterval { return self.hours }
	
	/** A NSTimeInterval value in Days */
	var days: NSTimeInterval {return self.hours * 24}
	/** A NSTimeInterval value in Days */
	var day: NSTimeInterval { return self.days }
	
	/** A NSTimeInterval value in Months */
	var months: NSTimeInterval {return self.days * 31}
	/** A NSTimeInterval value in Months */
	var month: NSTimeInterval { return self.months }
	
	/** A NSTimeInterval value in Years */
	var years: NSTimeInterval { return self.months * 12}
	/** A NSTimeInterval value in Years */
	var year: NSTimeInterval { return self.years }
	
	/** A NSTimeInterval value in Decades */
	var decades: NSTimeInterval { return self.years * 10}
	/** A NSTimeInterval value in Decades */
	var decade: NSTimeInterval { return self.decades }
	
	/** Constructs a NSDate in the past */
	var ago: NSDate {return NSDate(timeIntervalSinceNow: -self)}
	
	/** Constructs a NSDate in the future */
	var fromNow: NSDate {return NSDate(timeIntervalSinceNow: self)}
}
