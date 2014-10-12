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
typealias Fahrenheit = Double
typealias Celsius = Double
typealias Mile = Double
typealias Feet = Double
typealias Inch = Double
typealias Kilometer = Double
typealias Meter = Double
typealias Kelvin = Double
typealias Knot = Double
typealias Day = Double
typealias Hour = Double
typealias Minute = Double
typealias Second = Double
typealias Pound = Double
typealias Stone = Double
typealias Kilo = Double


//MARK: Constants
// Length / Distance
let kConversionMilesPerKilometer = 1.609344
let kConversionMilesPerFoot = 0.00018939394
let kConversionKilometersPerMile = 0.621371192237334
let kConversionMilesPerNauticalMile = 1.15077945
let kConversionNauticalMilesPerMile = 0.868976
let kConversionFeetPerMile: Double = 5280
let kConversionFeetPerMeter = 0.3048
let kConversionMetersPerMile = 1609.347
let kConversionMetersPerFoot = 3.280839895

//GEOGRAPHIC / ANGLE
/** Radius of Earth at Equator (Clarke Ellipsoid) */
let kConversionEarthRadiusAtEquator: Kilometer  = 6_378.2  //In km
/** Radius of Earth at Pole (Clarke Ellipsoid) */
let kConversionEarthRadiusAtPole: Kilometer  = 6_356.6  //In km
let kConversionDegreesToRadians = 0.0174532925
let kConversionDegreesToGradian = 1.111111111
let kConversionRadiansToDegrees = 57.295779513082
let kConversionRadiansToGradian = 63.661977236758

//Weight
let kConversionPoundsPerKilograms = 2.20462
let kConversionPoundsPerStones: Double = 14
let kConversionKilogramsPerPound = 0.453592
let kConversionKilogramsPerStone = 6.35029
let kConversionStonesPerPound = 0.0714286
let kConversionStonesPerKilograms = 0.157473

//MARK: Extension of Double
extension Double {
	
	/** returns the minimum value in Degress Celsius */
	static var minDegressCelsius: Celsius {return -273.15}
	
	/** returns the minimum value in Degress Fahrenheit */
	static var minDegressFahrenheit: Fahrenheit {return -459.67}

	/** returns the minimum value in Degress Kelvin */
	static var minDegressKelvin: Kelvin {return 0}
	
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
func MINS_2_SECS(min:Minute)->Second { return Conversion.minutesToSeconds(min) }
func HOURS_2_MINS(hour:Hour)->Minute { return Conversion.hoursToMinutes(hour) }
func HOURS_2_SECS(hour:Hour)->Second { return MINS_2_SECS(HOURS_2_MINS(hour)) }
func DAYS_2_HOURS(day:Day)->Hour {return Conversion.daysToHours(day)}
func DAYS_2_MINS(day:Day)->Minute {return HOURS_2_MINS(DAYS_2_HOURS(day)) }
func DAYS_2_SECS(day:Day)->Second { return MINS_2_SECS(DAYS_2_MINS(day)) }

func DEG_2_RAD(deg:Double)->Double {return Conversion.degressToRadians(deg) }
func RAD_2_DEG(rad:Double)->Double {return Conversion.radiansToDegress(rad) }


//MARK: Conversion Class
/** 
 Conversion Class
 
 Functions for converting values
 */
public class Conversion : NSObject {

///---------------------------------------------------------------------------------------
/// Distance
///---------------------------------------------------------------------------------------
//MARK: Distance
	
	/** 
	Convert from Miles to Kilometers
	
	:param: miles - The distance in Miles
	:returns: Returns the distance in Kilometers.
	*/
	class func milesToKilometers(miles:Mile) ->Kilometer {
		return miles * kConversionMilesPerKilometer
	}
	
	/** 
	Convert from Kilometers to Miles
	
	:param: km - The distance in Kilometers
	:returns: Returns the distance in Miles.
	*/
	class func kilometersToMiles(km:Kilometer) ->Mile {
		return km * kConversionKilometersPerMile
	}
	
	/** 
	Convert from Feet to Meters
	
	:param: feet - The distance in Feet
	:returns: Returns the distance in Meters.
	*/
	class func feetToMeters(feet:Feet) ->Meter {
		return feet * kConversionMetersPerFoot
	}
	
	/** 
	Convert from Meters to Feet
	
	:param: meters - The distance in Meters
	:returns: Returns the distance in Feet.
	*/
	class func metersToFeet(meters:Meter) ->Feet {
		return meters * kConversionFeetPerMeter
	}

	/** 
	Convert from Miles to Feet
	
	:param: miles - The distance in Miles
	:returns: Returns the distance in Feet.
	*/
	class func milesToFeet(miles:Mile) ->Feet {
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
	class func kmhToMph(kmh:Kilometer) ->Mile {
		return self.kilometersToMiles(kmh)
	}

	/** 
	Convert from Mph (Miles per hour) to KmH (Kilometer per Hour)
	
	:param: kmh - The speed in Miles per hour
	:returns: Returns the speed in KmH.
	*/
	class func mphToKmh(mph:Mile) ->Kilometer {
		return self.milesToKilometers(mph)
	}
	
	/** 
	Convert from Knots to Mph (Miles per hour)
	
	:param: knots - The speed in Knots
	:returns: Returns the speed in Mph.
	*/
	class func knotsToMph(knots:Knot) ->Mile {
		return knots * kConversionMilesPerNauticalMile
	}
	
	/** 
	Convert from Mph (Miles per hour) to Knots
	
	:param: mph - The speed in Miles per hour
	:returns: Returns the speed in Knots.
	*/
	class func mphToKnots(mph:Mile) ->Knot {
		return mph * kConversionNauticalMilesPerMile
	}

///---------------------------------------------------------------------------------------
/// Temp
///---------------------------------------------------------------------------------------
//MARK: Temp
	
	func minDegCelsius() -> Double {
		return -273.15
	}
	
	func minDegFahrenheit() -> Double {
		return -459.67
	}
	
	func minDegKelvin() -> Int {
		return 0
	}

	/** 
	Convert from Fahrenheit to Celsius
	
	:param: fahrenheit - The Temprature in Fahrenheit
	:returns: Returns the temprature in degress Celsius.
	*/
	class func fahrenheitToCelsius(fahrenheit:Fahrenheit) ->Celsius {
		return (fahrenheit - 32.0) * (5.0/9.0)
	}
	
	/** 
	Convert from Celsius to Fahrenheit
	
	:param: celsius - The Temprature in Celsius
	:returns: Returns the temprature in degress Fahrenheit.
	*/
	class func celsiusToFahrenheit(celsius:Celsius) ->Fahrenheit {
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
	class func minutesToSeconds(mins:Minute) -> Second {
		return (mins * 60)
	}
	
	/**
	Convert from Minutes to Milliseconds
	
	:param: minutes - The time in Minutes
	:returns: Returns the time in Milliseconds.
	*/
	class func minutesToMilliseconds(minutes:Minute) -> Double {
		return floor(minutes * 60000)
	}

	/** 
	Convert from Hours to Minutes
	
	:param: mins - The time in Minutes
	:returns: Returns the time in Seconds.
	*/
	class func hoursToMinutes(hours:Hour) -> Minute {
		return (hours * 60)
	}

	/**
	Convert from Hours to Milliseconds
	
	:param: hours - The time in Hours
	:returns: Returns the time in Milliseconds.
	*/
	class func hoursToMilliseconds(hours:Hour) -> Double {
		return floor(hours * 3600000)
	}

	/** 
	Convert from Days to Hours
	
	:param: day - The number of Days
	:returns: Returns the hours from the passed in `day`.
	*/
	class func daysToHours(day:Day) -> Hour {
		return (day * 24)
	}
	
	/**
	Convert from Milliseconds to Hours
	
	:param: milliseconds - The time in Milliseconds
	:returns: Returns the time in Hours.
	*/
	class func millisecondsToHours(milliseconds:Double) -> Hour {
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
	class func poundsToKilograms(pounds:Pound) -> Kilo {
		return pounds * kConversionKilogramsPerPound;
	}

	/**
	Convert from Pounds to Stones
	
	:param: pounds - The weight in Pounds
	:returns: Returns the weight in Stones
	*/
	class func poundsToStones(pounds:Pound) -> Stone {
		return pounds * kConversionStonesPerPound;
	}
	
	/**
	Convert from Kilos to Pound
	
	:param: kilos - The weight in Kilos
	:returns: Returns the weight in Pounds
	*/
	class func kilogramsToPounds(kilos:Kilo) -> Pound {
		return kilos * kConversionPoundsPerKilograms;
	}
	
	/**
	Convert from Kilos to Stones
	
	:param: kilos - The weight in Kilos
	:returns: Returns the weight in Stones
	*/
	class func kilogramsToStones(kilos:Kilo) -> Stone {
		return kilos * kConversionStonesPerKilograms;
	}
	
	/**
	Convert from Stones to Pounds
	
	:param: stones - The weight in Stones
	:returns: Returns the weight in Pounds
	*/
	class func stonesToPounds(stones:Stone) -> Pound {
		return stones * kConversionPoundsPerStones;
	}

	/**
	Convert from Stones to Kilos
	
	:param: stones - The weight in Stones
	:returns: Returns the weight in Kilos
	*/
	class func stonesToKilograms(stones:Stone) -> Kilo {
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
	class func degressToRadians(degress:Double) -> Double {
		return degress * kConversionDegreesToRadians;
	}

	/**
	Convert from Degress to Gradian
	
	:param: degress - The number in Degress
	:returns: Returns the converted value in Gradian
	*/
	class func degressToGradian(degress:Double) -> Double {
		return degress * kConversionDegreesToGradian;
	}

	/**
	Convert from Radians to Degress
	
	:param: radian - The number in Radians
	:returns: Returns the converted value in Degress
	*/
	class func radiansToDegress(radian:Double) -> Double {
		return radian * kConversionRadiansToDegrees;
	}
	
	/**
	Convert from Radians to Gradian
	
	:param: radian - The number in Radians
	:returns: Returns the converted value in Gradian
	*/
	class func radiansToGradian(radian:Double) -> Double {
		return radian * kConversionRadiansToGradian;
	}
	

}