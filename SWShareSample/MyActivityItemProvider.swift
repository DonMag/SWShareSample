//
//  MyActivityItemProvider.swift
//  SWShareSample
//
//  Created by DonMag on 10/10/16.
//  Copyright © 2016 DonMag. All rights reserved.
//

import UIKit

class MyActivityItemProvider: UIActivityItemProvider {
	
	var facebookMessage : String!
	var twitterMessage : String!
	var emailMessage : String!
	
	init(placeholderItem: AnyObject, facebookMessage : String, twitterMessage : String, emailMessage : String) {
		super.init(placeholderItem: placeholderItem)
		self.facebookMessage = facebookMessage
		self.twitterMessage = twitterMessage
		self.emailMessage = emailMessage
	}
	

	override func item() -> AnyObject {
		
		switch (self.activityType!) {
		case UIActivityTypePostToFacebook:
			return self.facebookMessage
		case UIActivityTypePostToTwitter:
			return self.twitterMessage
		case UIActivityTypeMail:
			return self.emailMessage
		case UIActivityTypeMessage:
			return "Hello"
 
		default:
			return "Any Message"
		}
		
	}

}
