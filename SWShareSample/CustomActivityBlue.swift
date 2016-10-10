//
//  CustomActivityBlue.swift
//  SWShareSample
//
//  Created by DonMag on 10/7/16.
//  Copyright © 2016 DonMag. All rights reserved.
//

import UIKit

class CustomActivityBlue: UIActivity {

	override func activityType() -> String? {
		return "CustomActivity.Blue"
	}
	
	override func activityTitle() -> String? {
		return "Blue Activity"
	}
	
	override func canPerformWithActivityItems(activityItems: [AnyObject]) -> Bool {
		NSLog("%@ in %@", #function, NSStringFromClass(self.dynamicType))
		return true
	}
	
	override func prepareWithActivityItems(activityItems: [AnyObject]) {
		NSLog("%@ in %@", #function, NSStringFromClass(self.dynamicType))
	}
	
	override func activityViewController() -> UIViewController? {
		NSLog("%@ in %@", #function, NSStringFromClass(self.dynamicType))
		return nil
	}
	
	override func performActivity() {
		// Todo: handle action:
		NSLog("%@ in %@", #function, NSStringFromClass(self.dynamicType))
		
		self.activityDidFinish(true)
	}
	
	override func activityImage() -> UIImage? {
		return UIImage(named: "activityB")
	}
	
}
