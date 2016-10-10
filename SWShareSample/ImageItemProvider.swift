//
//  ImageItemProvider.swift
//  SWShareSample
//
//  Created by DonMag on 10/10/16.
//  Copyright © 2016 DonMag. All rights reserved.
//

import UIKit

class ImageItemProvider: UIActivityItemProvider {

	var emailImage : UIImage!
	var smsImage : UIImage!
	var otherImage : UIImage!
	
	init(placeholderItem: AnyObject, emailImage : UIImage, smsImage : UIImage, otherImage : UIImage) {
		super.init(placeholderItem: placeholderItem)
		self.emailImage = emailImage
		self.smsImage = smsImage
		self.otherImage = otherImage
	}
	
	
	override func item() -> AnyObject {
		
		switch (self.activityType!) {
			
			case UIActivityTypeMail:
				return self.emailImage
			
			case UIActivityTypeMessage:
				return self.smsImage
			
			default:
				return self.otherImage
			
		}
		
	}
	
}
