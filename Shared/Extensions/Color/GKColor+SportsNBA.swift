//
//  GKColor+SportsNBA.swift
//  GenesisKit
//
//  Created by Kevin A. Hoogheem on 10/29/14.
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
//
// Colors came from http://teamcolors.arc90.com

import Foundation

#if os(iOS)
	import UIKit
#elseif os(OSX)
	import Cocoa
#endif

/**
	Extensions of GKColor for Colors of NBA Teams
*/
public extension GKColor {
	
	//MARK: Atlanta Hawks
	/**
	Provides the Team Colors for the NBA Atlanta Hawks
	*/
	enum AtlantaHawks {
		case blue
		case red
		case gray
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		func color() -> GKColor {
			switch self {
			case blue:
				return GKColor(hexString: "000080")
			case red:
				return GKColor(hexString: "FF0000")
			case gray:
				return GKColor(hexString: "C0C0C0")
			}
		}
	}
	
	//MARK: Boston Celtics
	/**
	Provides the Team Colors for the NBA Boston Celtics
	*/
	enum BostonCeltics {
		case green
		case white
		case black
		case gold
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		func color() -> GKColor {
			switch self {
			case green:
				return GKColor(hexString: "009E60")
			case white:
				return GKColor.whiteColor()
			case black:
				return GKColor.blackColor()
			case gold:
				return GKColor(hexString: "EFE196")
			}
		}
	}

	//MARK: Brooklyn Nets
	/**
	Provides the Team Colors for the NBA Brooklyn Nets
	*/
	enum BrooklynNets {
		case black
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		func color() -> GKColor {
			switch self {
			case black:
				return GKColor.blackColor()
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Dallas Mavericks
	/**
	Provides the Team Colors for the NBA Dallas Mavericks
	*/
	enum DallasMavericks {
		case lightBlue
		case darkBlue
		case gray
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		func color() -> GKColor {
			switch self {
			case lightBlue:
				return GKColor(hexString: "0B60AD")
			case darkBlue:
				return GKColor(hexString: "072156")
			case gray:
				return GKColor(hexString: "A9A9A9")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Denver Nuggets
	/**
	Provides the Team Colors for the NBA Denver Nuggets
	*/
	enum DenverNuggets {
		case lightBlue
		case yellow
		case white
		case darkBlue
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		func color() -> GKColor {
			switch self {
			case lightBlue:
				return GKColor(hexString: "4B90CD")
			case yellow:
				return GKColor(hexString: "FDB827")
			case white:
				return GKColor.whiteColor()
			case darkBlue:
				return GKColor(hexString: "002D62")
			}
		}
	}

	//MARK: Detroit Pistons
	/**
	Provides the Team Colors for the NBA Detroit Pistons
	*/
	enum DetroitPistons {
		case blue
		case red
		case darkBlue
		case white

		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		func color() -> GKColor {
			switch self {
			case blue:
				return GKColor(hexString: "00519A")
			case red:
				return GKColor(hexString: "EB003C")
			case darkBlue:
				return GKColor(hexString: "041E40")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Golden State Warriors
	/**
	Provides the Team Colors for the NBA Golden State Warriors
	*/
	enum GoldenStateWarriors {
		case blue
		case yellow
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		func color() -> GKColor {
			switch self {
			case blue:
				return GKColor(hexString: "04529C")
			case yellow:
				return GKColor(hexString: "FFCC33")
			}
		}
	}

	//MARK: Houston Rockets
	/**
	Provides the Team Colors for the NBA Houston Rockets
	*/
	enum HoustonRockets {
		case red
		case gray
		case black
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		func color() -> GKColor {
			switch self {
			case red:
				return GKColor(hexString: "CE1138")
			case gray:
				return GKColor(hexString: "CCCCCC")
			case black:
				return GKColor.blackColor()
			}
		}
	}

	//MARK: Indiana Pacers
	/**
	Provides the Team Colors for the NBA Indiana Pacers
	*/
	enum IndianaPacers {
		case blue
		case yellow
		case gray
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		func color() -> GKColor {
			switch self {
			case blue:
				return GKColor(hexString: "092C57")
			case yellow:
				return GKColor(hexString: "FFC322")
			case gray:
				return GKColor(hexString: "C0C0C0")
			}
		}
	}

	//MARK: LA Clippers
	/**
	Provides the Team Colors for the NBA LA Clippers
	*/
	enum LAClippers {
		case red
		case blue
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		func color() -> GKColor {
			switch self {
			case red:
				return GKColor(hexString: "EE2944")
			case blue:
				return GKColor(hexString: "146AA2")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: LA Lakers
	/**
	Provides the Team Colors for the NBA LA Lakers
	*/
	enum LALakers {
		case purple
		case yellow
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		func color() -> GKColor {
			switch self {
			case purple:
				return GKColor(hexString: "4A2583")
			case yellow:
				return GKColor(hexString: "F5AF1B")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Memphis Grizzlies
	/**
	Provides the Team Colors for the NBA Memphis Grizzlies
	*/
	enum MemphisGrizzlies {
		case blue
		case lightBlue
		case lighterBlue
		case yellow
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		func color() -> GKColor {
			switch self {
			case blue:
				return GKColor(hexString: "001F70")
			case lightBlue:
				return GKColor(hexString: "7399C6")
			case lighterBlue:
				return GKColor(hexString: "BED4E9")
			case yellow:
				return GKColor(hexString: "FDB927")
			}
		}
	}

	//MARK: Miami Heat
	/**
	Provides the Team Colors for the NBA Miami Heat
	*/
	enum MiamiHeat {
		case black
		case red
		case white
		case yellow
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		func color() -> GKColor {
			switch self {
			case black:
				return GKColor.blackColor()
			case red:
				return GKColor(hexString: "B62630")
			case white:
				return GKColor.whiteColor()
			case yellow:
				return GKColor(hexString: "FF9F00")
			}
		}
	}

	//MARK: Milwaukee Bucks
	/**
	Provides the Team Colors for the NBA Milwaukee Bucks
	*/
	enum MilwaukeeBucks {
		case green
		case red
		case gray
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		func color() -> GKColor {
			switch self {
			case green:
				return GKColor(hexString: "003614")
			case red:
				return GKColor(hexString: "E32636")
			case gray:
				return GKColor(hexString: "C0C0C0")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Minnesota Timberwolves
	/**
	Provides the Team Colors for the NBA Minnesota Timberwolves
	*/
	enum MinnesotaTimberwolves {
		case blue
		case black
		case violet
		case green
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		func color() -> GKColor {
			switch self {
			case blue:
				return GKColor(hexString: "0F4D92")
			case black:
				return GKColor.blackColor()
			case violet:
				return GKColor(hexString: "8C92AC")
			case green:
				return GKColor(hexString: "50C878")
			}
		}
	}

	//MARK: New Orleans Pelicans
	/**
	Provides the Team Colors for the NBA New Orleans Pelicans
	*/
	enum NewOrleansPelicans {
		case blue
		case gold
		case red
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		func color() -> GKColor {
			switch self {
			case blue:
				return GKColor(hexString: "002B5C")
			case gold:
				return GKColor(hexString: "B4975A")
			case red:
				return GKColor(hexString: "E31836")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: New York Knicks
	/**
	Provides the Team Colors for the NBA New York Knicks
	*/
	enum NewYorkKnicks {
		case blue
		case orange
		case gray
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		func color() -> GKColor {
			switch self {
			case blue:
				return GKColor(hexString: "0953A0")
			case orange:
				return GKColor(hexString: "FF7518")
			case gray:
				return GKColor(hexString: "C0C0C0")
			}
		}
	}

	//MARK: Oklahoma City Thunder
	/**
	Provides the Team Colors for the NBA Oklahoma City Thunder
	*/
	enum OklahomaCityThunder {
		case blue
		case orange
		case gold
		case darkBlue
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		func color() -> GKColor {
			switch self {
			case blue:
				return GKColor(hexString: "007DC3")
			case orange:
				return GKColor(hexString: "F05133")
			case gold:
				return GKColor(hexString: "FDBB30")
			case darkBlue:
				return GKColor(hexString: "002D62")
			}
		}
	}

	//MARK: Orlando Magic
	/**
	Provides the Team Colors for the NBA Orlando Magic
	*/
	enum OrlandoMagic {
		case blue
		case black
		case slate
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		func color() -> GKColor {
			switch self {
			case blue:
				return GKColor(hexString: "0047AB")
			case black:
				return GKColor.blackColor()
			case slate:
				return GKColor(hexString: "708090")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Philadelphia 76ers
	/**
	Provides the Team Colors for the NBA Philadelphia 76ers
	*/
	enum Philadelphia76ers {
		case blue
		case red
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		func color() -> GKColor {
			switch self {
			case blue:
				return GKColor(hexString: "0046AD")
			case red:
				return GKColor(hexString: "D0103A")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	
	
	
	
	
}