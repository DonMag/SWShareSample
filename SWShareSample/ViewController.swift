//
//  ViewController.swift
//  SWShareSample
//
//  Created by DonMag on 10/7/16.
//  Copyright © 2016 DonMag. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


	@IBAction func doShare(sender: AnyObject) {

		let emailText = "This is for email"
		guard let emailImage = UIImage(named: "act-email.png") else { return }
		
		let smsText = "This is for sms"
		guard let smsImage = UIImage(named: "act-sms.png") else { return }
		
		let otherText = "This is for everything else"
		guard let otherImage = UIImage(named: "act-other.png") else { return }
		
		
		// use a string for placeholderItem so it knows to expect a string
		let dummyText = "text"
		// use an image for placeholderItem so it knows to expect an image
		let dummyImage = UIImage()
		
		
		let textItem = TextItemProvider(placeholderItem: dummyText, emailMessage: emailText, smsMessage: smsText, otherMessage: otherText)
		let imageItem = ImageItemProvider(placeholderItem: dummyImage, emailImage: emailImage, smsImage: smsImage, otherImage: otherImage)
		
		
		let standardItemsToShare = [textItem, imageItem]
		
		// add custom activities if desired, else nil
		let customActivitiesToShare = [CustomActivityBlue(), CustomActivityGreen()]
		
		let activityVC = UIActivityViewController(
			activityItems: standardItemsToShare,
			applicationActivities: customActivitiesToShare
		)
		
		// example of excluding types if desired
		activityVC.excludedActivityTypes = [
			UIActivityTypeAirDrop,
			UIActivityTypeAddToReadingList
		]
		
		activityVC.completionWithItemsHandler = {
			(activityType, completed, items, error) in
			
			guard completed else { print("User cancelled."); return }
			
			print("Completed With Activity Type: \(activityType)")
			
		}
		
		// must be PopOver on iPad --- will be ignored on iPhone
		activityVC.popoverPresentationController?.barButtonItem = sender as? UIBarButtonItem
		
		presentViewController(activityVC, animated: true, completion: nil)
		
	}
	
}


