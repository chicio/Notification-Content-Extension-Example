//
//  NotificationViewController.swift
//  RichPushNotificationContentExtension
//
//  Created by Fabrizio Duroni on 06.08.18.
//  Copyright © 2018 Fabrizio Duroni. All rights reserved.
//

import UIKit
import UserNotifications
import UserNotificationsUI

class NotificationViewController: UIViewController, UNNotificationContentExtension {
    @IBOutlet weak var nasaImage: UIImageView!
    @IBOutlet weak var nasaTitle: UILabel!
    @IBOutlet weak var nasaDescription: UILabel!
    
    func didReceive(_ notification: UNNotification) {
        if let validTitle = notification.request.content.userInfo["title"] as? String,
            let validDescription = notification.request.content.userInfo["description"] as? String,
            let validImageName = notification.request.content.userInfo["imageName"] as? String {
            nasaTitle.text = validTitle
            nasaDescription.text = validDescription
            nasaImage.image = UIImage(named: validImageName)
        }
    }
}
