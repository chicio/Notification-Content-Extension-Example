//
//  ViewController.swift
//  RichPushNotification
//
//  Created by Fabrizio Duroni on 06.08.18.
//  Copyright © 2018 Fabrizio Duroni. All rights reserved.
//

import UIKit
import UserNotifications

class LocalNotificationBuilder {
    
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let notificationCenter = UNUserNotificationCenter.current()
        
        //Notification actions
        let acceptAction = UNNotificationAction(identifier: "view",
                                                title: "View Photo in app",
                                                options: [.foreground, .authenticationRequired])
        let declineAction = UNNotificationAction(identifier: "skip",
                                                 title: "Skip",
                                                 options: [])
        //Notification category
        let notificationCategory = UNNotificationCategory(identifier: "NasaDailyPhoto",
                                                          actions: [
                                                            acceptAction,
                                                            declineAction],
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
        notificationContent.userInfo = [
            "title" : "At the Heart of Orion",
            "description" : "Near the center of this sharp cosmic portrait, at the heart of the Orion Nebula, are four hot, massive stars known as the Trapezium. Gathered within a region about 1.5 light-years in radius, they dominate the core of the dense Orion Nebula Star Cluster. Ultraviolet ionizing radiation from the Trapezium stars, mostly from the brightest star Theta-1 Orionis C powers the complex star forming region's entire visible glow. About three million years old, the Orion Nebula Cluster was even more compact in its younger years and a recent dynamical study indicates that runaway stellar collisions at an earlier age may have formed a black hole with more than 100 times the mass of the Sun. The presence of a black hole within the cluster could explain the observed high velocities of the Trapezium stars. The Orion Nebula's distance of some 1,500 light-years would make it the closest known black hole to planet Earth.",
            "imageName" : "orion"
        ]
        
        //Notification trigger
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        //Notification request
        let request = UNNotificationRequest(identifier: "NasaDailyPhoto", content: notificationContent, trigger: trigger)
        
        notificationCenter.add(request, withCompletionHandler: nil)
    }
}

