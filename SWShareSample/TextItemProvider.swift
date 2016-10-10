//
//  TextItemProvider.swift
//  SWShareSample
//
//  Created by DonMag on 10/10/16.
//  Copyright © 2016 DonMag. All rights reserved.
//

import UIKit

class TextItemProvider: UIActivityItemProvider {

	var emailMessage : String!
	var smsMessage : String!
	var otherMessage : String!
	
	init(placeholderItem: AnyObject, emailMessage : String, smsMessage : String, otherMessage : String) {
		super.init(placeholderItem: placeholderItem)
		self.emailMessage = emailMessage
		self.smsMessage = smsMessage
		self.otherMessage = otherMessage
	}
	
	
	override func item() -> AnyObject {
		
		switch (self.activityType!) {
			
		case UIActivityTypeMail:
			return self.emailMessage
			
		case UIActivityTypeMessage:
			return self.smsMessage
			
		default:
			return self.otherMessage
			
		}
		
	}
	
}
