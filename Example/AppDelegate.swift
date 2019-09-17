//
//  AppDelegate.swift
//  Example
//
//  Created by Assin on 2019. 9. 17..
//  Copyright © 2019 Assin. All rights reserved.
//

import UIKit
import AssinLaunhcer
// MARK: - AppDelegate

/// The AppDelegate
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    /// The UIWindow
    var window: UIWindow?

    /// Application did finish launching with options
    ///
    /// - Parameters:
    ///   - application: The UIApplication
    ///   - launchOptions: The LaunchOptions
    /// - Returns: The launch result
    func application(_ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow()
        let launcherViewController = AssinLauncherViewController {
            window.rootViewController = ViewController.initFromStoryboard()
        }

        window.rootViewController = launcherViewController
        window.makeKeyAndVisible()
        self.window = window
        return true
    }

}
