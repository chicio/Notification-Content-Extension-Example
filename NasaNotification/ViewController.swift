//
//  ViewController.swift
//
//  Created by Fabrizio Duroni on 06/08/2018.
//  2018 Fabrizio Duroni.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        NasaLocalNotificationBuilder()
            .setActions()
            .setCategory()
            .setContent()
            .build()
    }
}

