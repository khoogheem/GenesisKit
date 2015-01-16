//
//  GKColor+SportsNHL.swift
//  GenesisKit
//
//  Created by Kevin A. Hoogheem on 11/6/14.
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
	iOS & OSX Extensions of GKColor for Colors of NHL Teams

	**Swift Only**

	To get the orange color of the Anaheim Ducks... AnaheimDucks.orange.color()
*/
public extension GKColor {
    //MARK: NHL Colors

	//MARK: Anaheim Ducks
	/**
	Provides the Team Colors for the NHL Anaheim Ducks
	*/
	public enum AnaheimDucks {
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		/** Color whose RGBA values are (r 0.569 g 0.463 b 0.294 a 1.0) */
		case gold
		/** Color whose RGBA values are (r 0.937 g 0.322 b 0.145 a 1.0) */
		case orange
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case black:
				return GKColor.blackColor()
			case gold:
				return GKColor(hexString: "91764B")
			case orange:
				return GKColor(hexString: "EF5225")
			}
		}
	}

	//MARK: Anaheim Ducks
	/**
	Provides the Team Colors for the NHL Arizona Coyotes
	*/
	public enum ArizonaCoyotes {
		/** Color whose RGBA values are (r 0.518 g 0.122 b 0.153 a 1.0) */
		case red
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		/** Color whose RGBA values are (r 0.937 g 0.882 b 0.776 a 1.0) */
		case tan
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case red:
				return GKColor(hexString: "841F27")
			case black:
				return GKColor.blackColor()
			case tan:
				return GKColor(hexString: "EFE1C6")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Boston Bruins
	/**
	Provides the Team Colors for the NHL Boston Bruins
	*/
	public enum BostonBruins {
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		/** Color whose RGBA values are (r 1.0 g 0.769 b 0.133 a 1.0) */
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
				return GKColor(hexString: "FFC422")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Buffalo Sabres
	/**
	Provides the Team Colors for the NHL Buffalo Sabres
	*/
	public enum BuffaloSabres {
		/** Color whose RGBA values are (r 0.0 g 0.18 b 0.384 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 0.992 g 0.733 b 0.184 a 1.0) */
		case yellow
		/** Color whose RGBA values are (r 0.682 g 0.714 b 0.725 a 1.0) */
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
				return GKColor(hexString: "002E62")
			case yellow:
				return GKColor(hexString: "FDBB2F")
			case gray:
				return GKColor(hexString: "AEB6B9")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Calgary Flames
	/**
	Provides the Team Colors for the NHL Calgary Flames
	*/
	public enum CalgaryFlames {
		/** Color whose RGBA values are (r 0.878 g 0.227 b 0.243 a 1.0) */
		case red
		/** Color whose RGBA values are (r 1.0 g 0.78 b 0.345 a 1.0) */
		case yellow
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
				return GKColor(hexString: "E03A3E")
			case yellow:
				return GKColor(hexString: "FFC758")
			case black:
				return GKColor.blackColor()
			case white:
				return GKColor.whiteColor()
			}
		}
	}
	
	//MARK: Carolina Hurricanes
	/**
	Provides the Team Colors for the NHL Carolina Hurricanes
	*/
	public enum CarolinaHurricanes {
		/** Color whose RGBA values are (r 0.878 g 0.227 b 0.243 a 1.0) */
		case red
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		/** Color whose RGBA values are (r 0.557 g 0.557 b 0.565 a 1.0) */
		case gray
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case red:
				return GKColor(hexString: "E03A3E")
			case black:
				return GKColor.blackColor()
			case gray:
				return GKColor(hexString: "8E8E90")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Chicago Blackhawks
	/**
	Provides the Team Colors for the NHL Chicago Blackhawks
	*/
	public enum ChicagoBlackhawks {
		/** Color whose RGBA values are (r 0.89 g 0.149 b 0.227 a 1.0) */
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
				return GKColor(hexString: "E3263A")
			case black:
				return GKColor.blackColor()
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Colorado Avalanche
	/**
	Provides the Team Colors for the NHL Colorado Avalanche
	*/
	public enum ColoradoAvalanche {
		/** Color whose RGBA values are (r 0.545 g 0.161 b 0.259 a 1.0) */
		case maroon
		/** Color whose RGBA values are (r 0.004 g 0.329 b 0.541 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		/** Color whose RGBA values are (r 0.663 g 0.69 b 0.722 a 1.0) */
		case silver
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case maroon:
				return GKColor(hexString: "8B2942")
			case blue:
				return GKColor(hexString: "01548A")
			case black:
				return GKColor.blackColor()
			case silver:
				return GKColor(hexString: "A9B0B8")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Columbus Blue Jackets
	/**
	Provides the Team Colors for the NHL Columbus Blue Jackets
	*/
	public enum ColumbusBlueJackets {
		/** Color whose RGBA values are (r 0.0 g 0.157 b 0.361 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 0.878 g 0.227 b 0.243 a 1.0) */
		case red
		/** Color whose RGBA values are (r 0.663 g 0.69 b 0.722 a 1.0) */
		case silver
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case blue:
				return GKColor(hexString: "00285C")
			case red:
				return GKColor(hexString: "E03A3E")
			case silver:
				return GKColor(hexString: "A9B0B8")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Dallas Stars
	/**
	Provides the Team Colors for the NHL Dallas Stars
	*/
	public enum DallasStars {
		/** Color whose RGBA values are (r 0.0 g 0.416 b 0.306 a 1.0) */
		case green
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		/** Color whose RGBA values are (r 0.753 g 0.753 b 0.753 a 1.0) */
		case silver
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case green:
				return GKColor(hexString: "006A4E")
			case black:
				return GKColor.blackColor()
			case white:
				return GKColor.whiteColor()
			case silver:
				return GKColor(hexString: "C0C0C0")
			}
		}
	}

	//MARK: Detroit Red Wings
	/**
	Provides the Team Colors for the NHL Detroit Red Wings
	*/
	public enum DetroitRedWings {
		/** Color whose RGBA values are (r 0.925 g 0.122 b 0.149 a 1.0) */
		case red
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case red:
				return GKColor(hexString: "EC1F26")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Edmonton Oilers
	/**
	Provides the Team Colors for the NHL Edmonton Oilers
	*/
	public enum EdmontonOilers {
		/** Color whose RGBA values are (r 0.0 g 0.216 b 0.467 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 0.902 g 0.416 b 0.125 a 1.0) */
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
				return GKColor(hexString: "003777")
			case orange:
				return GKColor(hexString: "E66A20")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Florida Panthers
	/**
	Provides the Team Colors for the NHL Florida Panthers
	*/
	public enum FloridaPanthers {
		/** Color whose RGBA values are (r 0.784 g 0.129 b 0.247 a 1.0) */
		case red
		/** Color whose RGBA values are (r 0.0 g 0.18 b 0.373 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 0.835 g 0.612 b 0.02 a 1.0) */
		case gold
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case red:
				return GKColor(hexString: "C8213F")
			case blue:
				return GKColor(hexString: "002E5F")
			case gold:
				return GKColor(hexString: "D59C05")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Los Angeles Kings
	/**
	Provides the Team Colors for the NHL Los Angeles Kings
	*/
	public enum LosAngelesKings {
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		/** Color whose RGBA values are (r 0.686 g 0.718 b 0.729 a 1.0) */
		case silver
		
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
			case silver:
				return GKColor(hexString: "AFB7BA")
				
			}
		}
	}

	//MARK: Minnesota Wild
	/**
	Provides the Team Colors for the NHL Minnesota Wild
	*/
	public enum MinnesotaWild {
		/** Color whose RGBA values are (r 0.008 g 0.341 b 0.212 a 1.0) */
		case green
		/** Color whose RGBA values are (r 0.749 g 0.169 b 0.216 a 1.0) */
		case red
		/** Color whose RGBA values are ( 0.937 g 0.706 b 0.063 a 1.0) */
		case yellow
		/** Color whose RGBA values are (r 0.933 g 0.89 b 0.78 a 1.0) */
		case tan
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case green:
				return GKColor(hexString: "025736")
			case red:
				return GKColor(hexString: "BF2B37")
			case yellow:
				return GKColor(hexString: "EFB410")
			case tan:
				return GKColor(hexString: "EEE3C7")
			case white:
				return GKColor.whiteColor()
				
			}
		}
	}

	//MARK: Montreal Canadiens
	/**
	Provides the Team Colors for the NHL Montreal Canadiens
	*/
	public enum MontrealCanadiens {
		/** Color whose RGBA values are (r 0.749 g 0.184 b 0.22 a 1.0) */
		case red
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		/** Color whose RGBA values are (r 0.129 g 0.216 b 0.439 a 1.0) */
		case blue
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case red:
				return GKColor(hexString: "BF2F38")
			case white:
				return GKColor.whiteColor()
			case blue:
				return GKColor(hexString: "213770")
				
			}
		}
	}

	//MARK: Nashville Predators
	/**
	Provides the Team Colors for the NHL Nashville Predators
	*/
	public enum NashvillePredators {
		/** Color whose RGBA values are (r 0.992 g 0.733 b 0.184 a 1.0) */
		case yellow
		/** Color whose RGBA values are (r 0.0 g 0.18 b 0.384 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case yellow:
				return GKColor(hexString: "FDBB2F")
			case blue:
				return GKColor(hexString: "002E62")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: New Jersey Devils
	/**
	Provides the Team Colors for the NHL New Jersey Devils
	*/
	public enum NewJerseyDevils {
		/** Color whose RGBA values are (r 0.878 g 0.227 b 0.243 a 1.0) */
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
				return GKColor(hexString: "E03A3E")
			case black:
				return GKColor.blackColor()
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: New York Islanders
	/**
	Provides the Team Colors for the NHL New York Islanders
	*/
	public enum NewYorkIslanders {
		/** Color whose RGBA values are (r 0.0 g 0.322 b 0.608 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 0.961 g 0.49 b 0.192 a 1.0) */
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
				return GKColor(hexString: "00529B")
			case orange:
				return GKColor(hexString: "F57D31")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: New York Rangers
	/**
	Provides the Team Colors for the NHL New York Rangers
	*/
	public enum NewYorkRangers {
		/** Color whose RGBA values are (r 0.004 g 0.38 b 0.671 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 0.902 g 0.224 b 0.247 a 1.0) */
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
				return GKColor(hexString: "0161AB")
			case red:
				return GKColor(hexString: "E6393F")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Ottawa Senators
	/**
	Provides the Team Colors for the NHL Ottawa Senators
	*/
	public enum OttawaSenators {
		/** Color whose RGBA values are (r 0.894 g 0.09 b 0.243 a 1.0) */
		case red
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		/** Color whose RGBA values are (r 0.839 g 0.624 b 0.059 a 1.0) */
		case gold
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case red:
				return GKColor(hexString: "E4173E")
			case black:
				return GKColor.blackColor()
			case gold:
				return GKColor(hexString: "D69F0F")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Philadelphia Flyers
	/**
	Provides the Team Colors for the NHL Philadelphia Flyers
	*/
	public enum PhiladelphiaFlyers {
		/** Color whose RGBA values are (r 0.957 g 0.475 b 0.251 a 1.0) */
		case orange
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
			case orange:
				return GKColor(hexString: "F47940")
			case black:
				return GKColor.blackColor()
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Pittsburgh Penguins
	/**
	Provides the Team Colors for the NHL Pittsburgh Penguins
	*/
	public enum PittsburgPenguins {
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		/** Color whose RGBA values are (r 0.82 g 0.741 b 0.502 a 1.0) */
		case gold
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
				return GKColor(hexString: "D1BD80")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: San Jose Sharks
	/**
	Provides the Team Colors for the NHL San Jose Sharks
	*/
	public enum SanJoseSharks {
		/** Color whose RGBA values are (r 0.02 g 0.325 b 0.365 a 1.0) */
		case green
		/** Color whose RGBA values are (r 0.953 g 0.561 b 0.125 a 1.0) */
		case orange
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
			case green:
				return GKColor(hexString: "05535D")
			case orange:
				return GKColor(hexString: "F38F20")
			case black:
				return GKColor.blackColor()
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Saint Louis Blues
	/**
	Provides the Team Colors for the NHL Saint Louis Blues
	*/
	public enum SaintLouisBlues {
		/** Color whose RGBA values are (r 0.02 g 0.275 b 0.627 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 1.0 g 0.765 b 0.145 a 1.0) */
		case yellow
		/** Color whose RGBA values are (r 0.063 g 0.122 b 0.282 a 1.0) */
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
				return GKColor(hexString: "0546A0")
			case yellow:
				return GKColor(hexString: "FFC325")
			case darkBlue:
				return GKColor(hexString: "101F48")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Tampa Bay Lightning
	/**
	Provides the Team Colors for the NHL Tampa Bay Lightning
	*/
	public enum TampaBayLightning {
		/** Color whose RGBA values are (r 0.004 g 0.243 b 0.49 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		/** Color whose RGBA values are (r 0.753 g 0.753 b 0.753 a 1.0) */
		case gray
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case blue:
				return GKColor(hexString: "013E7D")
			case white:
				return GKColor.whiteColor()
			case black:
				return GKColor.blackColor()
			case gray:
				return GKColor(hexString: "C0C0C0")
			}
		}
	}

	//MARK: Toronto Maple Leafs
	/**
	Provides the Team Colors for the NHL Toronto Maple Leafs
	*/
	public enum TorontoMapleLeafs {
		/** Color whose RGBA values are (r 0.0 g 0.216 b 0.467 a 1.0) */
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
				return GKColor(hexString: "003777")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Vancouver Canucks
	/**
	Provides the Team Colors for the NHL Vancouver Canucks
	*/
	public enum VancouverCanucks {
		/** Color whose RGBA values are (r 0.027 g 0.204 b 0.435 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 0.016 g 0.478 b 0.29 a 1.0) */
		case green
		/** Color whose RGBA values are (r 0.659 g 0.663 b 0.678 a 1.0) */
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
				return GKColor(hexString: "07346F")
			case green:
				return GKColor(hexString: "047A4A")
			case gray:
				return GKColor(hexString: "A8A9AD")
			case white:
				return GKColor.whiteColor()
			}
		}
	}

	//MARK: Washington Capitals
	/**
	Provides the Team Colors for the NHL Washington Capitals
	*/
	public enum WashingtonCapitals {
		/** Color whose RGBA values are (r 0.812 g 0.075 b 0.169 a 1.0) */
		case red
		/** Color whose RGBA values are (r 0.0 g 0.129 b 0.306 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		/** Color whose RGBA values are (r 0.0 g 0.0 b 0.0 a 1.0) */
		case black
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case red:
				return GKColor(hexString: "CF132B")
			case blue:
				return GKColor(hexString: "00214E")
			case white:
				return GKColor.whiteColor()
			case black:
				return GKColor.blackColor()
			}
		}
	}

	//MARK: Winnipeg Jets
	/**
	Provides the Team Colors for the NHL Winnipeg Jets
	*/
	public enum WinnipegJets {
		/** Color whose RGBA values are (r 0.0 g 0.18 b 0.384 a 1.0) */
		case blue
		/** Color whose RGBA values are (r 1.0 g 1.0 b 1.0 a 1.0) */
		case white
		/** Color whose RGBA values are (r 0.004 g 0.408 b 0.671 a 1.0) */
		case lightBlue
		/** Color whose RGBA values are (r 0.659 g 0.663 b 0.678 a 1.0) */
		case gray
		
		/**
		Provides the color object from the Team Color
		
		:returns: Returns The Color Object
		*/
		public func color() -> GKColor {
			switch self {
			case blue:
				return GKColor(hexString: "002E62")
			case white:
				return GKColor.whiteColor()
			case lightBlue:
				return GKColor(hexString: "0168AB")
			case gray:
				return GKColor(hexString: "A8A9AD")
			}
		}
	}

}