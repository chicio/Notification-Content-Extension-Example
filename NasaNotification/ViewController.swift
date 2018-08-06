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
        
        let notificationCenter = UNUserNotificationCenter.current()
        
        //Notification actions
        let acceptAction = UNNotificationAction(identifier: "ACCEPT_ACTION",
                                                title: "Accept",
                                                options: [.foreground, UNNotificationActionOptions.authenticationRequired])
        let declineAction = UNNotificationAction(identifier: "DECLINE_ACTION",
                                                 title: "Decline",
                                                 options: [])
        //Notification category
        let notificationCategory = UNNotificationCategory(identifier: "NasaDailyPhoto",
                                                           actions: [acceptAction, declineAction],
                                                           intentIdentifiers: [],
                                                           hiddenPreviewsBodyPlaceholder: "",
                                                           options: .customDismissAction)
        notificationCenter.setNotificationCategories([notificationCategory])
        
        //Notification content
        let notificationContent = UNMutableNotificationContent()
        notificationContent.title = "Your Nasa Daily Photo"
        notificationContent.body = "Long press to see you daily nasa photo"
        notificationContent.sound = UNNotificationSound.default()
        notificationContent.categoryIdentifier = "NasaDailyPhoto"
        
        //Notification trigger
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        //Notification request
        let request = UNNotificationRequest(identifier: "NasaNotification", content: notificationContent, trigger: trigger)
        
        notificationCenter.add(request, withCompletionHandler: nil)
    }
}

