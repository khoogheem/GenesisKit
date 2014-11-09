//
//  GKColor+SportsNFL.swift
//  GenesisKit
//
//  Created by Kevin A. Hoogheem on 10/31/14.
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

	To get the red color of the Arizona Cardinals... ArizonaCardinals.red.color()
*/
public extension GKColor {

	//MARK: Arizona Cardinals
	/**
	Provides the Team Colors for the NFL Arizona Cardinals
	*/
	public enum ArizonaCardinals {
		/** Color whose RGBA values are (r 0.529 g 0.024 b 0.098 a 1.0) */
		case red
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
				return GKColor(hexString: "870619")
			case black:
				return GKColor.blackColor()
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Atlanta Falcons
	/**
	Provides the Team Colors for the NFL Atlanta Falcons
	*/
	public enum AtlantaFalcons {
		/** Color whose RGBA values are (r 0.741 g 0.051 b 0.094 a 1.0) */
		case red
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		/** Color whose RGBA values are (r 0.863 g 0.878 b 0.898 a 1.0) */
		case gray
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case red:
				return GKColor(hexString: "BD0D18")
			case black:
				return GKColor.blackColor()
			case white:
				return GKColor.whiteColor()
			case gray:
				return GKColor(hexString: "DCE0E5")
			}
		}
	}
	
	//MARK: Baltimore Ravens
	/**
	Provides the Team Colors for the NFL Baltimore Ravens
	*/
	public enum BaltimoreRavens {
		/** Color whose RGBA values are (r 0.157 g 0.012 b 0.325 a 1.0) */
		case purple
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		/** Color whose RGBA values are (r 0.816 g 0.698 b 0.251 a 1.0) */
		case gold
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case purple:
				return GKColor(hexString: "280353")
			case black:
				return GKColor.blackColor()
			case gold:
				return GKColor(hexString: "D0B240")
			case white:
				return GKColor.whiteColor()
				
			}
		}
	}

	//MARK: Buffalo Bills
	/**
	Provides the Team Colors for the NFL Buffalo Bills
	*/
	public enum BuffaloBills {
		/** Color whose RGBA values are (r 0.0 g 0.2 b 0.553 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 0.776 g 0.047 b 0.188 a 1.0) */
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
				return GKColor(hexString: "00338D")
			case red:
				return GKColor(hexString: "C60C30")
			case white:
				return GKColor.whiteColor()
				
			}
		}
	}

	//MARK: Carolina Panthers
	/**
	Provides the Team Colors for the NFL Carolina Panthers
	*/
	public enum CarolinaPanthers {
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		/** Color whose RGBA values are (r 0.0 g 0.533 b 0.808 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 0.647 g 0.675 b 0.686 a 1.0) */
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
			case blue:
				return GKColor(hexString: "0088CE")
			case gray:
				return GKColor(hexString: "A5ACAF")
			case white:
				return GKColor.whiteColor()
				
			}
		}
	}

	//MARK: Chicago Bears
	/**
	Provides the Team Colors for the NFL Chicago Bears
	*/
	public enum ChicagoBears {
		/** Color whose RGBA values are (r 0.012 g 0.125 b 0.184 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 0.867 g 0.282 b 0.078 a 1.0) */
		case orange
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case blue:
				return GKColor(hexString: "03202F")
			case orange:
				return GKColor(hexString: "DD4814")
			case white:
				return GKColor.whiteColor()
				
			}
		}
	}

	//MARK: Cincinnati Bengals
	/**
	Provides the Team Colors for the NFL Cincinnati Bengals
	*/
	public enum CincinnatiBengals {
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		/** Color whose RGBA values are (r 0.984 g 0.31 b 0.078 a 1.0) */
		case orange
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
			case orange:
				return GKColor(hexString: "FB4F14")
			case white:
				return GKColor.whiteColor()
				
			}
		}
	}

	//MARK: Cleveland Browns
	/**
	Provides the Team Colors for the NFL Cleveland Browns
	*/
	public enum ClevelandBrowns {
		/** Color whose RGBA values are (r 0.149 g 0.125 b 0.118 a 1.0) */
		case brown
		/** Color whose RGBA values are (r 0.89 g 0.286 b 0.071 a 1.0) */
		case orange
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case brown:
				return GKColor(hexString: "26201E")
			case orange:
				return GKColor(hexString: "E34912")
			case white:
				return GKColor.whiteColor()
				
			}
		}
	}

	//MARK: Dallas Cowboys
	/**
	Provides the Team Colors for the NFL Dallas Cowboys
	*/
	public enum DallasCowboys {
		/** Color whose RGBA values are (r 0.0 g 0.133 b 0.267 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 0.549 g 0.545 b 0.541 a 1.0) */
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
				return GKColor(hexString: "002244")
			case gray:
				return GKColor(hexString: "8C8B8A")
			case white:
				return GKColor.whiteColor()
				
			}
		}
	}

	//MARK: Denver Broncos
	/**
	Provides the Team Colors for the NFL Denver Broncos
	*/
	public enum DenverBroncos {
		/** Color whose RGBA values are (r 0.984 g 0.31 b 0.078 a 1.0) */
		case orange
		/** Color whose RGBA values are (r 0.0 g 0.133 b 0.267 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case orange:
				return GKColor(hexString: "FB4F14")
			case blue:
				return GKColor(hexString: "002244")
			case white:
				return GKColor.whiteColor()
				
			}
		}
	}

	//MARK: Detroit Lions
	/**
	Provides the Team Colors for the NFL Detroit Lions
	*/
	public enum DetroitLions {
		/** Color whose RGBA values are (r 0.0 g 0.427 b 0.69 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 0.773 g 0.78 b 0.812 a 1.0) */
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
			case blue:
				return GKColor(hexString: "006DB0")
			case gray:
				return GKColor(hexString: "C5C7CF")
			case black:
				return GKColor.blackColor()
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Green Bay Packers
	/**
	Provides the Team Colors for the NFL Green Bay Packers
	*/
	public enum GreenBayPackers {
		/** Color whose RGBA values are (r 0.129 g 0.239 b 0.188 a 1.0) */
		case green
		/** Color whose RGBA values are (r 1.0 g 0.8 b 0.0 a 1.0) */
		case yellow
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case green:
				return GKColor(hexString: "213D30")
			case yellow:
				return GKColor(hexString: "FFCC00")
			}
		}
	}

	//MARK: Houston Texans
	/**
	Provides the Team Colors for the NFL Houston Texans
	*/
	public enum HoustonTexans {
		/** Color whose RGBA values are (r 0.008 g 0.145 b 0.227 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 0.702 g 0.106 b 0.204 a 1.0) */
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
				return GKColor(hexString: "02253A")
			case red:
				return GKColor(hexString: "B31B34")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Indianapolis Colts
	/**
	Provides the Team Colors for the NFL Indianapolis Colts
	*/
	public enum IndianapolisColts {
		/** Color whose RGBA values are (r 0.0 g 0.231 b 0.482 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case blue:
				return GKColor(hexString: "003B7B")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Jacksonville Jaguars
	/**
	Provides the Team Colors for the NFL Jacksonville Jaguars
	*/
	public enum JacksonvilleJaguars {
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		/** Color whose RGBA values are (r 0.816 g 0.698 b 0.224 a 1.0) */
		case gold
		/** Color whose RGBA values are (r 0.0 g 0.443 b 0.596 a 1.0) */
		case blue
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
			case gold:
				return GKColor(hexString: "D0B239")
			case blue:
				return GKColor(hexString: "007198")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Kansas City Chiefs
	/**
	Provides the Team Colors for the NFL Kansas City Chiefs
	*/
	public enum KansasCityChiefs {
		/** Color whose RGBA values are (r 0.698 g 0.0 b 0.196 a 1.0) */
		case red
		/** Color whose RGBA values are (r 0.949 g 0.784 b 0.0 a 1.0) */
		case yellow
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case red:
				return GKColor(hexString: "B20032")
			case yellow:
				return GKColor(hexString: "F2C800")
			}
		}
	}

	//MARK: Miami Dolphins
	/**
	Provides the Team Colors for the NFL Miami Dolphins
	*/
	public enum MiamiDolphins {
		/** Color whose RGBA values are (r 0.0 g 0.553 b 0.592 a 1.0) */
		case green
		/** Color whose RGBA values are (r 0.004 g 0.337 b 0.475 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		/** Color whose RGBA values are (r 0.961 g 0.506 b 0.122 a 1.0) */
		case orange
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case green:
				return GKColor(hexString: "008D97")
			case blue:
				return GKColor(hexString: "015679")
			case white:
				return GKColor.whiteColor()
			case orange:
				return GKColor(hexString: "F5811F")
			}
		}
	}

	//MARK: Minnesota Vikings
	/**
	Provides the Team Colors for the NFL Minnesota Vikings
	*/
	public enum MinnesotaVikings {
		/** Color whose RGBA values are (r 0.31 g 0.149 b 0.51 a 1.0) */
		case purple
		/** Color whose RGBA values are (r 1.0 g 0.773 b 0.184 a 1.0) */
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
				return GKColor(hexString: "4F2682")
			case yellow:
				return GKColor(hexString: "FFC52F")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: New England Patriots
	/**
	Provides the Team Colors for the NFL New England Patriots
	*/
	public enum NewEnglandPatriots {
		/** Color whose RGBA values are (r 0.051 g 0.145 b 0.298 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 0.839 g 0.839 b 0.839 a 1.0) */
		case gray
		/** Color whose RGBA values are (r 0.784 g 0.031 b 0.082 a 1.0) */
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
				return GKColor(hexString: "0D254C")
			case gray:
				return GKColor(hexString: "D6D6D6")
			case red:
				return GKColor(hexString: "C80815")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: New Orleans Saints
	/**
	Provides the Team Colors for the NFL New Orleans Saints
	*/
	public enum NewOrleansSaints {
		/** Color whose RGBA values are (r 0.824 g 0.722 b 0.529 a 1.0) */
		case gold
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
			case gold:
				return GKColor(hexString: "D2B887")
			case black:
				return GKColor.blackColor()
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: New York Giants
	/**
	Provides the Team Colors for the NFL New York Giants
	*/
	public enum NewYorkGiants {
		/** Color whose RGBA values are (r 0.098 g 0.184 b 0.42 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 0.792 g 0.0 b 0.102 a 1.0) */
		case red
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		/** Color whose RGBA values are (r 0.502 g 0.502 b 0.502 a 1.0) */
		case gray
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case blue:
				return GKColor(hexString: "192F6B")
			case red:
				return GKColor(hexString: "CA001A")
			case white:
				return GKColor.whiteColor()
			case gray:
				return GKColor(hexString: "808080")
			}
		}
	}

	//MARK: New York Jets
	/**
	Provides the Team Colors for the NFL New York Jets
	*/
	public enum NewYorkJets {
		/** Color whose RGBA values are (r 0.047 g 0.216 b 0.114 a 1.0) */
		case green
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case green:
				return GKColor(hexString: "0C371D")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Oakland Raiders
	/**
	Provides the Team Colors for the NFL Oakland Raiders
	*/
	public enum OaklandRaiders {
		/** Color whose RGBA values are (r 0.769 g 0.784 b 0.796 a 1.0) */
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
			case gray:
				return GKColor(hexString: "C4C8CB")
			case black:
				return GKColor.blackColor()
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Philadelphia Eagles
	/**
	Provides the Team Colors for the NFL Philadelphia Eagles
	*/
	public enum PhiladelphiaEagles {
		/** Color whose RGBA values are (r 0.0 g 0.231 b 0.282 a 1.0) */
		case green
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		/** Color whose RGBA values are (r 0.439 g 0.502 b 0.565 a 1.0) */
		case charcoal
		/** Color whose RGBA values are (r 0.753 g 0.753 b 0.753 a 1.0) */
		case silver
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case green:
				return GKColor(hexString: "003B48")
			case black:
				return GKColor.blackColor()
			case charcoal:
				return GKColor(hexString: "708090")
			case silver:
				return GKColor(hexString: "C0C0C0")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Pittsburgh Steelers
	/**
	Provides the Team Colors for the NFL Pittsburgh Steelers
	*/
	public enum PittsburghSteelers {
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		/** Color whose RGBA values are (r 0.949 g 0.784 b 0.0 a 1.0) */
		case yellow
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
			case yellow:
				return GKColor(hexString: "F2C800")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: San Diego Chargers
	/**
	Provides the Team Colors for the NFL San Diego Chargers
	*/
	public enum SanDiegoChargers {
		/** Color whose RGBA values are (r 0.031 g 0.129 b 0.29 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 0.933 g 0.776 b 0.027 a 1.0) */
		case yellow
		/** Color whose RGBA values are (r 0.357 g 0.573 b 0.898 a 1.0) */
		case lightBlue
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case blue:
				return GKColor(hexString: "08214A")
			case yellow:
				return GKColor(hexString: "EEC607")
			case lightBlue:
				return GKColor(hexString: "5B92E5")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: San Francisco 49ers
	/**
	Provides the Team Colors for the NFL San Francisco 49ers
	*/
	public enum SanFrancisco49ers {
		/** Color whose RGBA values are (r 0.686 g 0.118 b 0.173 a 1.0) */
		case red
		/** Color whose RGBA values are (r 0.902 g 0.745 b 0.541 a 1.0) */
		case gold
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case red:
				return GKColor(hexString: "AF1E2C")
			case gold:
				return GKColor(hexString: "E6BE8A")
			case black:
				return GKColor.blackColor()
			}
		}
	}

	//MARK: Seattle Seahawks
	/**
	Provides the Team Colors for the NFL Seattle Seahawks
	*/
	public enum SeattleSeahawks {
		/** Color whose RGBA values are (r 0.024 g 0.098 b 0.18 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 0.306 g 0.682 b 0.278 a 1.0) */
		case green
		/** Color whose RGBA values are (r 0.675 g 0.714 b 0.737 a 1.0) */
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
				return GKColor(hexString: "06192E")
			case green:
				return GKColor(hexString: "4EAE47")
			case gray:
				return GKColor(hexString: "ACB6BC")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Saint Louis Rams
	/**
	Provides the Team Colors for the NFL Saint Louis Rams
	*/
	public enum SaintLouisRams {
		/** Color whose RGBA values are (r 0.075 g 0.149 b 0.294 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 0.788 g 0.686 b 0.455 a 1.0) */
		case gold
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case blue:
				return GKColor(hexString: "13264B")
			case gold:
				return GKColor(hexString: "C9AF74")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Tampa Bay Buccaneers
	/**
	Provides the Team Colors for the NFL Tampa Bay Buccaneers
	*/
	public enum TampaBayBuccaneers {
		/** Color whose RGBA values are (r 0.839 g 0.039 b 0.043 a 1.0) */
		case red
		/** Color whose RGBA values are (r 0.537 g 0.463 b 0.373 a 1.0) */
		case tan
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		/** Color whose RGBA values are (r 1.0 g 0.478 b 0.0 a 1.0) */
		case orange
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case red:
				return GKColor(hexString: "D60A0B")
			case tan:
				return GKColor(hexString: "89765F")
			case black:
				return GKColor.blackColor()
			case white:
				return GKColor.whiteColor()
			case orange:
				return GKColor(hexString: "FF7A00")
			}
		}
	}

	//MARK: Tennessee Titans
	/**
	Provides the Team Colors for the NFL Tennessee Titans
	*/
	public enum TennesseeTitans {
		/** Color whose RGBA values are (r 0.392 g 0.561 b 0.8 a 1.0) */
		case lightBlue
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.502 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 1.0 g 0.0 b 0.0 a 1.0) */
		case red
		/** Color whose RGBA values are (r 0.753 g 0.753 b 0.753 a 1.0) */
		case silver
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case lightBlue:
				return GKColor(hexString: "648FCC")
			case blue:
				return GKColor(hexString: "000080")
			case red:
				return GKColor(hexString: "FF0000")
			case silver:
				return GKColor(hexString: "C0C0C0")
			}
		}
	}

	//MARK: Washington Redskins
	/**
	Provides the Team Colors for the NFL Washington Redskins
	*/
	public enum WashingtonRedskins {
		/** Color whose RGBA values are (r 0.467 g 0.192 b 0.255 a 1.0) */
		case burgundy
		/** Color whose RGBA values are (r 1.0 g 0.714 b 0.071 a 1.0) */
		case gold
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case burgundy:
				return GKColor(hexString: "773141")
			case gold:
				return GKColor(hexString: "FFB612")
			case white:
				return GKColor.whiteColor()
			}
		}
	}
	
}