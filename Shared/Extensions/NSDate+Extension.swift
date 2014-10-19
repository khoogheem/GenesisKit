//
//  NSDate+Extension.swift
//  GenesisKit
//
//  Created by Kevin A. Hoogheem on 10/18/14.
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


/**
  Extensions of NSDate Class
 */
extension NSDate {
	
	convenience init(dateString:String, format:String = "yyyy-MM-dd", timezone:NSTimeZone?) {
		var dateFmt = NSDateFormatter()
		//dateFmt.timeZone = NSTimeZone.defaultTimeZone()
		dateFmt.timeZone = timezone
		dateFmt.dateFormat = format
		let d = dateFmt.dateFromString(dateString)
		self.init(timeInterval:0, sinceDate:d!)
	}
	
	convenience init(dateString:String, format:String = "yyyy-MM-dd") {
		var dateFmt = NSDateFormatter()
		dateFmt.timeZone = NSTimeZone.defaultTimeZone()
		dateFmt.dateFormat = format
		let d = dateFmt.dateFromString(dateString)
		self.init(timeInterval:0, sinceDate:d!)
	}
	
	convenience init(year:Int, month:Int, day:Int) {
		var c = NSDateComponents()
		c.year = year
		c.month = month
		c.day = day
		
		var gregorian = NSCalendar(identifier:NSGregorianCalendar)
		var date = gregorian.dateFromComponents(c)
		self.init(timeInterval:0, sinceDate:date!)
	}
	
	class func parse(dateString:String, format:String="yyyy-MM-dd") -> NSDate {
		return NSDate(dateString: dateString, format: format)
	}
	
	class func from(#year:Int, month:Int, day:Int) -> NSDate {
		return NSDate(year: year, month: month, day: day)
	}
	
	class func ageFromDate(birthday: NSDate) -> Int {
		
		var calendar : NSCalendar = NSCalendar.autoupdatingCurrentCalendar()
		var unitFlags : NSCalendarUnit = NSCalendarUnit.CalendarUnitYear | NSCalendarUnit.CalendarUnitMonth | NSCalendarUnit.CalendarUnitDay
		var dateComponentNow : NSDateComponents = calendar.components(unitFlags, fromDate: NSDate.date())
		var dateComponentBirth : NSDateComponents = calendar.components(unitFlags, fromDate: birthday)
		
		if ( (dateComponentNow.month < dateComponentBirth.month) ||
			((dateComponentNow.month == dateComponentBirth.month) && (dateComponentNow.day < dateComponentBirth.day))
			){
				return dateComponentNow.year - dateComponentBirth.year - 1
		} else {
			return dateComponentNow.year - dateComponentBirth.year
		}
	}
	
}