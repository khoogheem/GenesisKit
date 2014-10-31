GenesisKit
==========

GenesisKit is designed to create a base set of functions that will make development easier.  

##Installation

To install the framework copy the project into your existing project.  Under your Target/General add as a Framework.  


**Some of the Classes are Swift Only**, due to use of non portable features such as Strucs/Varidics and Tuples.. and will be noted as such.

##Supported OS

**Supported iOS**: iOS8, iOS7 (if you remove the files from the framework *some items may still not work outside*)

**Supported OSX**: 10.9+

##Type Alias
*GKColor* - either a UIColor or NSColor depending on iOS or OSX deployement

*GKFont* - either a UIFont or NSFont depending on iOS or OSX deployement

*GKImage* - either a UIImage or NSImage depending on iOS or OSX deployment

##Extensions
*GKColor+Extension* - Provides generic extensions to GKColor

*GKColor+CompanyColors* - Provides colors for common Corporations

*GKColor+FlatColors* - Provides common flat colors
####Sports Colors
*GKColor+SportsNBA* - Provides colors for NBA Teams

*GKColor+SportsNFL* - Provides colors for NFL Teams

*GKColor+SportsNHL* - Provides colors for NHL Teams

*Usage*
```swift
let GBGreen = GKColor.GreenBayPackers.green.color()
```

*NSDate+Extension* - Provides multiple convenice methods to create NSDates

*NSTimeInterval+Extension* - Provides quick methods to create time based on chaining.

*Usage*
```swift
let nextYear: NSDate = 1.year.fromNow
let lastMonth = 1.month.ago
```

##Clases

###Conversion
Provides functions for conversion.. as well as extensions to Double

###Diagnostics
Provides functions to help with determination of the system
