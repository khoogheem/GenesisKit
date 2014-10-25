//
//  Conversion.swift
//  GenesisKit
//
//  Created by Kevin A. Hoogheem on 10/11/14.
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
/*
Informaiton

http://www.sfei.org/it/gis/map-interpretation/conversion-constants#Constants%20are%20exact

*/


import Foundation

//MARK: TypeAlias
//Just here for documentation
public typealias Fahrenheit = Double
public typealias Celsius = Double
public typealias Mile = Double
public typealias Feet = Double
public typealias Inch = Double
public typealias Kilometer = Double
public typealias Meter = Double
public typealias Kelvin = Double
public typealias Knot = Double
public typealias Day = Double
public typealias Hour = Double
public typealias Minute = Double
public typealias Second = Double
public typealias Pound = Double
public typealias Stone = Double
public typealias Kilo = Double


//MARK: Constants
// Length / Distance
public let kConversionMilesPerKilometer = 1.609344
public let kConversionMilesPerFoot = 0.00018939394
public let kConversionKilometersPerMile = 0.621371192237334
public let kConversionMilesPerNauticalMile = 1.15077945
public let kConversionNauticalMilesPerMile = 0.868976
public let kConversionFeetPerMile: Double = 5280
public let kConversionFeetPerMeter = 0.3048
public let kConversionMetersPerMile = 1609.347
public let kConversionMetersPerFoot = 3.280839895

//GEOGRAPHIC / ANGLE
/** Radius of Earth at Equator (Clarke Ellipsoid) in km */
public let kConversionEarthRadiusAtEquator: Kilometer  = 6_378.2  //In km
/** Radius of Earth at Pole (Clarke Ellipsoid) in km */
public let kConversionEarthRadiusAtPole: Kilometer  = 6_356.6  //In km
public let kConversionDegreesToRadians = 0.0174532925
public let kConversionDegreesToGradian = 1.111111111
public let kConversionRadiansToDegrees = 57.295779513082
public let kConversionRadiansToGradian = 63.661977236758

//Weight
public let kConversionPoundsPerKilograms = 2.20462
public let kConversionPoundsPerStones: Double = 14
public let kConversionKilogramsPerPound = 0.453592
public let kConversionKilogramsPerStone = 6.35029
public let kConversionStonesPerPound = 0.0714286
public let kConversionStonesPerKilograms = 0.157473

//MARK: Extension of Double
public extension Double {
	
	/** returns the minimum value in Degress Celsius */
	static var minDegressCelsius: Celsius {return Conversion.minDegCelsius}
	
	/** returns the minimum value in Degress Fahrenheit */
	static var minDegressFahrenheit: Fahrenheit {return Conversion.minDegFahrenheit}

	/** returns the minimum value in Degress Kelvin */
	static var minDegressKelvin: Kelvin {return Conversion.minDegKelvin }
	
	/** Converts the Celsius value to Fahrenheit */
	func toFahrenheit() -> Fahrenheit { return (self * 9.0/5.0) + 32.0 }
	
	/** Converts the Fahrenheit value to Celsius */
	func toCelsius() -> Celsius { return (self - 32.0) * (5.0/9.0) }

	/** Converts the KmH value to a value represented in Mph */
	var Kmh: Kilometer { return Conversion.kmhToMph(self)}
	
	/** Converts the KmH value to a value represented in Mph */
	func toMph() -> Mile { return self.Mph}
	
	/** Converts the Mph value to a value represented in KmH */
	var Mph: Mile { return Conversion.mphToKmh(self)}
	
	/** Converts the Mph value to a value represented in KmH */
	func toKmH() -> Kilometer { return self.Kmh}

}

//MARK: Convenience Functions
public func MINS_2_SECS(min:Minute)->Second { return Conversion.minutesToSeconds(min) }
public func HOURS_2_MINS(hour:Hour)->Minute { return Conversion.hoursToMinutes(hour) }
public func HOURS_2_SECS(hour:Hour)->Second { return MINS_2_SECS(HOURS_2_MINS(hour)) }
public func DAYS_2_HOURS(day:Day)->Hour {return Conversion.daysToHours(day)}
public func DAYS_2_MINS(day:Day)->Minute {return HOURS_2_MINS(DAYS_2_HOURS(day)) }
public func DAYS_2_SECS(day:Day)->Second { return MINS_2_SECS(DAYS_2_MINS(day)) }
public func DEG_2_RAD(deg:Double)->Double {return Conversion.degressToRadians(deg) }
public func RAD_2_DEG(rad:Double)->Double {return Conversion.radiansToDegress(rad) }


//MARK: Conversion Class
/**
 Conversion Class
 
 Functions for converting values
 */
@objc public class Conversion : NSObject {

///---------------------------------------------------------------------------------------
/// Distance
///---------------------------------------------------------------------------------------
//MARK: Distance
	
	/** 
	Convert from Miles to Kilometers
	
	:param: miles - The distance in Miles
	:returns: Returns the distance in Kilometers.
	*/
	public class func milesToKilometers(miles:Mile) ->Kilometer {
		return miles * kConversionMilesPerKilometer
	}
	
	/** 
	Convert from Kilometers to Miles
	
	:param: km - The distance in Kilometers
	:returns: Returns the distance in Miles.
	*/
	public class func kilometersToMiles(km:Kilometer) ->Mile {
		return km * kConversionKilometersPerMile
	}
	
	/** 
	Convert from Feet to Meters
	
	:param: feet - The distance in Feet
	:returns: Returns the distance in Meters.
	*/
	public class func feetToMeters(feet:Feet) ->Meter {
		return feet * kConversionMetersPerFoot
	}
	
	/** 
	Convert from Meters to Feet
	
	:param: meters - The distance in Meters
	:returns: Returns the distance in Feet.
	*/
	public class func metersToFeet(meters:Meter) ->Feet {
		return meters * kConversionFeetPerMeter
	}

	/** 
	Convert from Miles to Feet
	
	:param: miles - The distance in Miles
	:returns: Returns the distance in Feet.
	*/
	public class func milesToFeet(miles:Mile) ->Feet {
		return miles * kConversionFeetPerMile
	}

	
	
///---------------------------------------------------------------------------------------
/// Speed
///---------------------------------------------------------------------------------------
//MARK: Speed
	
	/** 
	Convert from KmH (Kilometer per Hour) to Mph (Miles per hour)
	
	:param: kmh - The speed in Kilometers per hour
	:returns: Returns the speed in Miles.
	*/
	public class func kmhToMph(kmh:Kilometer) ->Mile {
		return self.kilometersToMiles(kmh)
	}

	/** 
	Convert from Mph (Miles per hour) to KmH (Kilometer per Hour)
	
	:param: kmh - The speed in Miles per hour
	:returns: Returns the speed in KmH.
	*/
	public class func mphToKmh(mph:Mile) ->Kilometer {
		return self.milesToKilometers(mph)
	}
	
	/** 
	Convert from Knots to Mph (Miles per hour)
	
	:param: knots - The speed in Knots
	:returns: Returns the speed in Mph.
	*/
	public class func knotsToMph(knots:Knot) ->Mile {
		return knots * kConversionMilesPerNauticalMile
	}
	
	/** 
	Convert from Mph (Miles per hour) to Knots
	
	:param: mph - The speed in Miles per hour
	:returns: Returns the speed in Knots.
	*/
	public class func mphToKnots(mph:Mile) ->Knot {
		return mph * kConversionNauticalMilesPerMile
	}

///---------------------------------------------------------------------------------------
/// Temp
///---------------------------------------------------------------------------------------
//MARK: Temp
	
	public class var minDegCelsius: Double {
		return -273.15
	}
	
	public class var minDegFahrenheit: Double {
		return -459.67
	}
	
	public class var minDegKelvin: Double {
		return 0
	}

	/** 
	Convert from Fahrenheit to Celsius
	
	:param: fahrenheit - The Temprature in Fahrenheit
	:returns: Returns the temprature in degress Celsius.
	*/
	public class func fahrenheitToCelsius(fahrenheit:Fahrenheit) ->Celsius {
		return (fahrenheit - 32.0) * (5.0/9.0)
	}
	
	/** 
	Convert from Celsius to Fahrenheit
	
	:param: celsius - The Temprature in Celsius
	:returns: Returns the temprature in degress Fahrenheit.
	*/
	public class func celsiusToFahrenheit(celsius:Celsius) ->Fahrenheit {
		return (celsius * 9.0/5.0) + 32.0
	}

	
	
///---------------------------------------------------------------------------------------
/// Time
///---------------------------------------------------------------------------------------
//MARK: Time
	
	/** 
	Convert from Minutes to Seconds
	
	:param: mins - The time in Minutes
	:returns: Returns the time in Seconds.
	*/
	public class func minutesToSeconds(mins:Minute) -> Second {
		return (mins * 60)
	}
	
	/**
	Convert from Minutes to Milliseconds
	
	:param: minutes - The time in Minutes
	:returns: Returns the time in Milliseconds.
	*/
	public class func minutesToMilliseconds(minutes:Minute) -> Double {
		return floor(minutes * 60000)
	}

	/** 
	Convert from Hours to Minutes
	
	:param: mins - The time in Minutes
	:returns: Returns the time in Seconds.
	*/
	public class func hoursToMinutes(hours:Hour) -> Minute {
		return (hours * 60)
	}

	/**
	Convert from Hours to Milliseconds
	
	:param: hours - The time in Hours
	:returns: Returns the time in Milliseconds.
	*/
	public class func hoursToMilliseconds(hours:Hour) -> Double {
		return floor(hours * 3600000)
	}

	/** 
	Convert from Days to Hours
	
	:param: day - The number of Days
	:returns: Returns the hours from the passed in `day`.
	*/
	public class func daysToHours(day:Day) -> Hour {
		return (day * 24)
	}
	
	/**
	Convert from Milliseconds to Hours
	
	:param: milliseconds - The time in Milliseconds
	:returns: Returns the time in Hours.
	*/
	public class func millisecondsToHours(milliseconds:Double) -> Hour {
		return (milliseconds / 3600000)
	}

///---------------------------------------------------------------------------------------
/// Weight
///---------------------------------------------------------------------------------------
//MARK: Weight

	/**
	Convert from Pounds to Kilograms
	
	:param: pounds - The weight in Pounds
	:returns: Returns the weight in Kilos
	*/
	public class func poundsToKilograms(pounds:Pound) -> Kilo {
		return pounds * kConversionKilogramsPerPound;
	}

	/**
	Convert from Pounds to Stones
	
	:param: pounds - The weight in Pounds
	:returns: Returns the weight in Stones
	*/
	public class func poundsToStones(pounds:Pound) -> Stone {
		return pounds * kConversionStonesPerPound;
	}
	
	/**
	Convert from Kilos to Pound
	
	:param: kilos - The weight in Kilos
	:returns: Returns the weight in Pounds
	*/
	public class func kilogramsToPounds(kilos:Kilo) -> Pound {
		return kilos * kConversionPoundsPerKilograms;
	}
	
	/**
	Convert from Kilos to Stones
	
	:param: kilos - The weight in Kilos
	:returns: Returns the weight in Stones
	*/
	public class func kilogramsToStones(kilos:Kilo) -> Stone {
		return kilos * kConversionStonesPerKilograms;
	}
	
	/**
	Convert from Stones to Pounds
	
	:param: stones - The weight in Stones
	:returns: Returns the weight in Pounds
	*/
	public class func stonesToPounds(stones:Stone) -> Pound {
		return stones * kConversionPoundsPerStones;
	}

	/**
	Convert from Stones to Kilos
	
	:param: stones - The weight in Stones
	:returns: Returns the weight in Kilos
	*/
	public class func stonesToKilograms(stones:Stone) -> Kilo {
		return stones * kConversionKilogramsPerStone;
	}



///---------------------------------------------------------------------------------------
/// Geographic/Angle
///---------------------------------------------------------------------------------------
//MARK: Geographic/Angle

	/**
	Convert from Degress to Radians
	
	:param: degress - The number in Degress
	:returns: Returns the converted value in Radians
	*/
	public class func degressToRadians(degress:Double) -> Double {
		return degress * kConversionDegreesToRadians;
	}

	/**
	Convert from Degress to Gradian
	
	:param: degress - The number in Degress
	:returns: Returns the converted value in Gradian
	*/
	public class func degressToGradian(degress:Double) -> Double {
		return degress * kConversionDegreesToGradian;
	}

	/**
	Convert from Radians to Degress
	
	:param: radian - The number in Radians
	:returns: Returns the converted value in Degress
	*/
	public class func radiansToDegress(radian:Double) -> Double {
		return radian * kConversionRadiansToDegrees;
	}
	
	/**
	Convert from Radians to Gradian
	
	:param: radian - The number in Radians
	:returns: Returns the converted value in Gradian
	*/
	public class func radiansToGradian(radian:Double) -> Double {
		return radian * kConversionRadiansToGradian;
	}
	

}