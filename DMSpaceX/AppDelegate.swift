//
//  AppDelegate.swift
//  DMSpaceX
//
//  Created by Kien NGUYEN on 26/2/18
//  Copyright (c) 2018 kien.ng. All rights reserved.
//

import UIKit
import Fabric
import Crashlytics

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        Fabric.with([Crashlytics.self()])
        return true
    }
}
