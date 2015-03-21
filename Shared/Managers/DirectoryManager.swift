//
//  DirectoryManager.swift
//  GenesisKit
//
//  Created by Kevin A. Hoogheem on 11/18/14.
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
	Helper Class for common Directorys and FilePaths.  This follows Apple Guidelines

	Guidelines:

		https://developer.apple.com/library/ios/documentation/FileManagement/Conceptual/FileSystemProgrammingGuide/FileSystemOverview/FileSystemOverview.html
 */
@objc public class DirectoryManager {
	
	///---------------------------------------------------------------------------------------
	/// @name Methods for Directory Paths
	///---------------------------------------------------------------------------------------
	//MARK: - Methods and Directory Paths

	/**
	 Location for Document files.  
	
	 On OSX this is the ~/Documents directory

	 Backup Rules: iOS - TRUE
		
	 :returns: A string of the directories path
	 */
	public class var documentDirectoryPath: String {
		return NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as String
	}
	
	/**
	Location for Library files.  Holds various documentation, support, and configuration files, resources
	
	Library in the current home directory—This is the version of the directory you use the most because it is the one that contains all user-specific files. In iOS, the home directory is the app’s sandbox directory. In OS X, it is the app’s sandbox directory or the current user’s home directory (if the app is not in a sandbox).
	
	On OSX this is the ~/Library directory

	Backup Rules: iOS - TRUE (with execption of the caches directory)

	:returns: A string of the directories path
	*/
	public class var libraryDirectoryPath: String {
		return NSSearchPathForDirectoriesInDomains(.LibraryDirectory, .UserDomainMask, true)[0] as String
	}

	/**
	Location of discardable cache files (Library/Caches)
	
	Put data cache files in the <Application_Home>/Library/Caches directory. Examples of files you should put in this directory include (but are not limited to) database cache files and downloadable content, such as that used by magazine, newspaper, and map apps. Your app should be able to gracefully handle situations where cached data is deleted by the system to free up disk space.
	
	On OSX this is the ~/Library/Caches directory

	Backup Rules: iOS - FALSE

	:warning: iOS May delete files from this directory in low memory cases.  Will also delete on a iTunes restore.
	:returns: A string of the directories path
	*/
	public class var cachesDirectoryPath: String {
		#if os(iOS)
			return NSSearchPathForDirectoriesInDomains(.CachesDirectory, .UserDomainMask, true)[0] as String
		#elseif os(OSX)
			let path:String =  NSSearchPathForDirectoriesInDomains(.CachesDirectory, .UserDomainMask, true)[0] as String
			return path.stringByAppendingPathComponent(NSBundle.mainBundle().bundleIdentifier!)
		#endif
	}

	/**
	Location for applicaton support files.  location of application support files (plug-ins, etc) (Library/Application Support)
	
	In iOS 5.0.1 and later, put support files in the <Application_Home>/Library/Application Support directory and apply the com.apple.MobileBackup extended attribute to them. This attribute prevents the files from being backed up to iTunes or iCloud. If you have a large number of support files, you may store them in a custom subdirectory and apply the extended attribute to just the directory.

	On OSX this is the ~/Library/Application Support directory

	Backup Rules: iOS - FALSE (we override the default behavor of TRUE)

	:returns:ß A string of the directories path
	*/
	public class var appSupportDirectoryPath: String {
		let path:String =  NSSearchPathForDirectoriesInDomains(.ApplicationSupportDirectory, .UserDomainMask, true)[0] as String

		#if os(iOS)
			//Lets mark it for NO Backup on iOS
			addSkipBackupAttributeToItemsAtPath(path)
		#endif
		
		return path
	}

	///---------------------------------------------------------------------------------------
	/// @name Other Methods
	///---------------------------------------------------------------------------------------
	//MARK: - Other Methods
	
	/**
	Sets a File Path to be skipped by iCloud Backup.  This can be either a single file or whole directory.

	:param: filePath A file Path you wish to have skipped by backup
	:returns: Returns the success/failure of the method
	*/
	public class func addSkipBackupAttributeToItemsAtPath(filePath: String) -> Bool {
		//Check if the file/path is even valid
		if !NSFileManager.defaultManager().fileExistsAtPath(filePath) {
			return false
		}
		
		//don't need that upper check really now we have wrapped this
		if let uPath = NSURL.fileURLWithPath(filePath) {
			var error:NSError?
			
			let success = uPath.setResourceValue(true, forKey: NSURLIsExcludedFromBackupKey, error: &error)
			
			if !success {
				if let myError = error {
					NSLog("Error excluding %@ from backup %@", uPath.lastPathComponent!, myError);
				}else {
					NSLog("Error excluding %@ from backup", uPath.lastPathComponent!);
				}
			}

			return success
		}
		
		return false
	}
	
}