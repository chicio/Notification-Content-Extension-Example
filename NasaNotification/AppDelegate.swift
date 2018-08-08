//
//  AppDelegate.swift
//
//  Created by Fabrizio Duroni on 06/08/2018.
//  2018 Fabrizio Duroni.
//

import UIKit
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        UNUserNotificationCenter
            .current()
            .requestAuthorization(options: [.alert, .sound, .badge],
                                  completionHandler: {didAllow, error in
                                    print("Did allow notification \(didAllow)")
        })
        return true
    }
}

