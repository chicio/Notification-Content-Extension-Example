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
    @IBOutlet var label: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any required interface initialization here.
    }

    func didReceive(_ notification: UNNotification) {
    }
}
