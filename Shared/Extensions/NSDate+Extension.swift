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
  iOS & OSX Extensions of NSDate Class
 */
public extension NSDate {
	
	/**
	Creates a NSDate from a given string and optional format (default: MM-dd-yyy)
 
	:param: dateString A String representation of a Date
	:param: format An optional format.  Default is MM-dd-yyyy
	:param: timezone An optional NSTimeZone.
	
	:returns: an NSDate object with the given `dateString` and optional `timezone`
	*/
	convenience init(dateString:String, format:String = "MM-dd-yyyy", timezone:NSTimeZone?) {
		var dateFmt = NSDateFormatter()
		//dateFmt.timeZone = NSTimeZone.defaultTimeZone()
		dateFmt.timeZone = timezone
		dateFmt.dateFormat = format
		let d = dateFmt.dateFromString(dateString)
		self.init(timeInterval:0, sinceDate:d!)
	}
	
	/**
	Creates a NSDate from a given string and optional format (default: MM-dd-yyy)
 
	:param: dateString A String representation of a Date
	:param: format An optional format.  Default is MM-dd-yyyy

	:returns: an NSDate object with the given `dateString`
	*/
	convenience init(dateString:String, format:String = "MM-dd-yyyy") {
		var dateFmt = NSDateFormatter()
		dateFmt.timeZone = NSTimeZone.defaultTimeZone()
		dateFmt.dateFormat = format
		let d = dateFmt.dateFromString(dateString)
		self.init(timeInterval:0, sinceDate:d!)
	}
	
	/**
	Creates a NSDate from a given year, month, day
 
	:param: year Int value of Year
	:param: month Int value of Month
	:param: day Int value of the Day
	
	:returns: an NSDate object with the given `dateString`
	*/
	convenience init(year:Int, month:Int, day:Int) {
		var c = NSDateComponents()
		c.year = year
		c.month = month
		c.day = day
		
		var gregorian = NSCalendar(identifier:NSGregorianCalendar)!
		var date = gregorian.dateFromComponents(c)
		self.init(timeInterval:0, sinceDate:date!)
	}
	
	/**
	Creates a NSDate from the given date string using optional format (default: MM-dd-yyy)
 
	:param: dateString A String representation of a Date
	:param: format An optional format.  Default is MM-dd-yyyy
	
	:returns: an NSDate object with the given `dateString`
	*/
	class func parse(dateString:String, format:String="MM-dd-yyyy") -> NSDate {
		return NSDate(dateString: dateString, format: format)
	}
	
	class func from(#year:Int, month:Int, day:Int) -> NSDate {
		return NSDate(year: year, month: month, day: day)
	}
	
	/**
	Provides back the number of years since the date given.  Can be used to determine someones age.
 
	:param: date The date to caluclate years since
	
	:returns: an Int value of the years that have passed since the `date`
	*/
	class func yearsFromDate(date: NSDate) -> Int {
		
		var calendar : NSCalendar = NSCalendar.autoupdatingCurrentCalendar()
		var unitFlags : NSCalendarUnit = NSCalendarUnit.CalendarUnitYear | NSCalendarUnit.CalendarUnitMonth | NSCalendarUnit.CalendarUnitDay
		var dateComponentNow : NSDateComponents = calendar.components(unitFlags, fromDate: NSDate())
		var dateComponentFrom : NSDateComponents = calendar.components(unitFlags, fromDate: date)
		
		if ( (dateComponentNow.month < dateComponentFrom.month) ||
			((dateComponentNow.month == dateComponentFrom.month) && (dateComponentNow.day < dateComponentFrom.day))
			){
				return dateComponentNow.year - dateComponentFrom.year - 1
		} else {
			return dateComponentNow.year - dateComponentFrom.year
		}
	}
	
	/**
	Provides a Int value of the current Year.

	:returns: an Int value of the current year
	*/
	class func thisYear() -> Int {
		var calendar : NSCalendar = NSCalendar.autoupdatingCurrentCalendar()
		var unitFlags : NSCalendarUnit = .CalendarUnitYear
		var dateComponentNow : NSDateComponents = calendar.components(.CalendarUnitYear, fromDate: NSDate())
		return dateComponentNow.year
	}

}