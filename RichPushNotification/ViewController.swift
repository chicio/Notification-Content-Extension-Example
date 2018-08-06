//
//  ViewController.swift
//  RichPushNotification
//
//  Created by Fabrizio Duroni on 06.08.18.
//  Copyright © 2018 Fabrizio Duroni. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let notificationContent = UNMutableNotificationContent()
        notificationContent.title = "Your Nasa Daily Photo"
        notificationContent.body = "Long press to see you daily nasa photo"
        notificationContent.sound = UNNotificationSound.default()
        notificationContent.categoryIdentifier = "NasaDailyPhoto"
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "NasaNotification", content: notificationContent, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
}

