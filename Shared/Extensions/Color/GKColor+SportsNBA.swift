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
	iOS & OSX Extensions of GKColor for Colors of NBA Teams

	**Swift Only**

	To get the red color of the Atlanta Hawks... AtlantaHawks.red.color()
*/
public extension GKColor {
	
	//MARK: Atlanta Hawks
	/**
	Provides the Team Colors for the NBA Atlanta Hawks
	*/
	public enum AtlantaHawks {
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.502 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 1.0 g 0.0 b 0.0 a 1.0) */
		case red
		/** Color whose RGBA values are (r 0.753 g 0.753 b 0.753 a 1.0) */
		case gray
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
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
	public enum BostonCeltics {
		/** Color whose RGBA values are (r 0.0 g 0.62 b 0.376 a 1.0) */
		case green
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.502 a 1.0) */
		case gold
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
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
	public enum BrooklynNets {
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
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
	public enum DallasMavericks {
		/** Color whose RGBA values are (r 0.043 g 0.376 b 0.678 a 1.0) */
		case lightBlue
		/** Color whose RGBA values are (r 0.027 g 0.129 b 0.337 a 1.0) */
		case darkBlue
		/** Color whose RGBA values are (r 0.663 g 0.663 b 0.663 a 1.0) */
		case gray
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
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
	public enum DenverNuggets {
		/** Color whose RGBA values are (r 0.294 g 0.565 b 0.804 a 1.0) */
		case lightBlue
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case yellow
		/** Color whose RGBA values are (r 0.992 g 0.722 b 0.153 a 1.0) */
		case white
		/** Color whose RGBA values are (r 0.0 g 0.176 b 0.384 a 1.0) */
		case darkBlue
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
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
	public enum DetroitPistons {
		/** Color whose RGBA values are (r 0.0 g 0.318 b 0.604 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 0.922 g 0.0 b 0.235 a 1.0) */
		case red
		/** Color whose RGBA values are (r 0.016 g 0.118 b 0.251 a 1.0) */
		case darkBlue
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white

		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
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
	public enum GoldenStateWarriors {
		/** Color whose RGBA values are (r 0.016 g 0.322 b 0.612 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 1.0 g 0.8 b 0.2 a 1.0) */
		case yellow
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
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
	public enum HoustonRockets {
		/** Color whose RGBA values are (r 0.808 g 0.067 b 0.22 a 1.0) */
		case red
		/** Color whose RGBA values are (r 0.8 g 0.8 b 0.8 a 1.0) */
		case gray
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
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
	public enum IndianaPacers {
		/** Color whose RGBA values are (r 0.035 g 0.173 b 0.341 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 1.0 g 0.765 b 0.133 a 1.0) */
		case yellow
		/** Color whose RGBA values are (r 0.753 g 0.753 b 0.753 a 1.0) */
		case gray
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
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
	public enum LAClippers {
		/** Color whose RGBA values are (r 0.933 g 0.161 b 0.267 a 1.0) */
		case red
		/** Color whose RGBA values are (r 0.078 g 0.416 b 0.635 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
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
	public enum LALakers {
		/** Color whose RGBA values are (r 0.29 g 0.145 b 0.514 a 1.0) */
		case purple
		/** Color whose RGBA values are (r 0.961 g 0.686 b 0.106 a 1.0) */
		case yellow
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
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
	public enum MemphisGrizzlies {
		/** Color whose RGBA values are (r 0.0 g 0.122 b 0.439 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 0.451 g 0.6 b 0.776 a 1.0) */
		case lightBlue
		/** Color whose RGBA values are (r 0.745 g 0.831 b 0.914 a 1.0) */
		case lighterBlue
		/** Color whose RGBA values are (r 0.992 g 0.725 b 0.153 a 1.0) */
		case yellow
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
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
	public enum MiamiHeat {
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		/** Color whose RGBA values are (r 0.714 g 0.149 b 0.188 a 1.0) */
		case red
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		/** Color whose RGBA values are (r 1.0 g 0.624 b 0.0 a 1.0) */
		case yellow
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
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
	public enum MilwaukeeBucks {
		/** Color whose RGBA values are (r 0.0 g 0.212 b 0.078 a 1.0) */
		case green
		/** Color whose RGBA values are (r 0.89 g 0.149 b 0.212 a 1.0) */
		case red
		/** Color whose RGBA values are (r 0.753 g 0.753 b 0.753 a 1.0) */
		case gray
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
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
	public enum MinnesotaTimberwolves {
		/** Color whose RGBA values are (r 0.059 g 0.302 b 0.573 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		/** Color whose RGBA values are (r 0.549 g 0.573 b 0.675 a 1.0) */
		case violet
		/** Color whose RGBA values are (r 0.314 g 0.784 b 0.471 a 1.0) */
		case green
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
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
	public enum NewOrleansPelicans {
		/** Color whose RGBA values are (r 0.0 g 0.169 b 0.361 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 0.706 g 0.592 b 0.353 a 1.0) */
		case gold
		/** Color whose RGBA values are (r 0.89 g 0.094 b 0.212 a 1.0) */
		case red
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
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
	public enum NewYorkKnicks {
		/** Color whose RGBA values are (r 0.035 g 0.325 b 0.627 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 1.0 g 0.459 b 0.094 a 1.0) */
		case orange
		/** Color whose RGBA values are (r 0.753 g 0.753 b 0.753 a 1.0) */
		case gray
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
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
	public enum OklahomaCityThunder {
		/** Color whose RGBA values are (r 0.0 g 0.49 b 0.765 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 0.941 g 0.318 b 0.2 a 1.0) */
		case orange
		/** Color whose RGBA values are (r 0.992 g 0.733 b 0.188 a 1.0) */
		case gold
		/** Color whose RGBA values are (r 0.0 g 0.176 b 0.384 a 1.0) */
		case darkBlue
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
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
	public enum OrlandoMagic {
		/** Color whose RGBA values are (r 0.0 g 0.278 b 0.671 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		/** Color whose RGBA values are (r 0.439 g 0.502 b 0.565 a 1.0) */
		case gray
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case blue:
				return GKColor(hexString: "0047AB")
			case black:
				return GKColor.blackColor()
			case gray:
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
	public enum Philadelphia76ers {
		/** Color whose RGBA values are (r 0.0 g 0.275 b 0.678 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 0.816 g 0.063 b 0.227 a 1.0) */
		case red
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
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

	//MARK: Phoenix Suns
	/**
	Provides the Team Colors for the NBA Phoenix Suns
	*/
	public enum PhoenixSuns {
		/** Color whose RGBA values are (r 0.11 g 0.063 b 0.369 a 1.0) */
		case purple
		/** Color whose RGBA values are (r 0.902 g 0.373 b 0.125 a 1.0) */
		case orange
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		/** Color whose RGBA values are (r 0.694 g 0.702 b 0.702 a 1.0) */
		case gray
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case purple:
				return GKColor(hexString: "1C105E")
			case orange:
				return GKColor(hexString: "E65F20")
			case black:
				return GKColor.blackColor()
			case white:
				return GKColor.whiteColor()
			case gray:
				return GKColor(hexString: "B1B3B3")
			}
		}
	}

	//MARK: Phoenix Suns
	/**
	Provides the Team Colors for the NBA Portland Trail Blazers
	*/
	public enum PortlandTrailBlazers {
		/** Color whose RGBA values are (r 0.941 g 0.086 b 0.227 a 1.0) */
		case red
		/** Color whose RGBA values are (r 0.714 g 0.749 b 0.749 a 1.0) */
		case gray
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case red:
				return GKColor(hexString: "F0163A")
			case gray:
				return GKColor(hexString: "B6BFBF")
			case black:
				return GKColor.blackColor()
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Phoenix Suns
	/**
	Provides the Team Colors for the NBA Sacramento Kings
	*/
	public enum SacramentoKings {
		/** Color whose RGBA values are (r 0.459 g 0.231 b 0.741 a 1.0) */
		case purple
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		/** Color whose RGBA values are (r 0.541 g 0.553 b 0.561 a 1.0) */
		case gray
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case purple:
				return GKColor(hexString: "753BBD")
			case black:
				return GKColor.blackColor()
			case gray:
				return GKColor(hexString: "8A8D8F")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Phoenix Suns
	/**
	Provides the Team Colors for the NBA San Antonio Spurs
	*/
	public enum SanAntonioSpurs {
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		/** Color whose RGBA values are (r 0.745 g 0.784 b 0.788 a 1.0) */
		case gray
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case black:
				return GKColor.blackColor()
			case gray:
				return GKColor(hexString: "BEC8C9")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Phoenix Suns
	/**
	Provides the Team Colors for the NBA Toronto Raptors
	*/
	public enum TorontoRaptors {
		/** Color whose RGBA values are (r 0.702 g 0.106 b 0.106 a 1.0) */
		case red
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		/** Color whose RGBA values are (r 0.439 g 0.502 b 0.565 a 1.0) */
		case gray
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case red:
				return GKColor(hexString: "B31B1B")
			case black:
				return GKColor.blackColor()
			case gray:
				return GKColor(hexString: "708090")
			}
		}
	}

	//MARK: Phoenix Suns
	/**
	Provides the Team Colors for the NBA Utah Jazz
	*/
	public enum UtahJazz {
		/** Color whose RGBA values are (r 0.0 g 0.153 b 0.365 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 1.0 g 0.569 b 0.0 a 1.0) */
		case yellow
		/** Color whose RGBA values are (r 0.051 g 0.251 b 0.024 a 1.0) */
		case green
		/** Color whose RGBA values are (r 0.71 g 0.71 b 0.71 a 1.0) */
		case gray
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case blue:
				return GKColor(hexString: "00275D")
			case yellow:
				return GKColor(hexString: "FF9100")
			case green:
				return GKColor(hexString: "0D4006")
			case gray:
				return GKColor(hexString: "B5B5B5")
			}
		}
	}

	//MARK: Phoenix Suns
	/**
	Provides the Team Colors for the NBA Washington Wizards
	*/
	public enum WashingtonWizards {
		/** Color whose RGBA values are (r 0.776 g 0.047 b 0.188 a 1.0) */
		case red
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		/** Color whose RGBA values are (r 0.0 g 0.133 b 0.267 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 0.737 g 0.769 b 0.8 a 1.0) */
		case gray
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case red:
				return GKColor(hexString: "C60C30")
			case white:
				return GKColor.whiteColor()
			case blue:
				return GKColor(hexString: "002244")
			case gray:
				return GKColor(hexString: "BCC4CC")
			}
		}
	}
	
}