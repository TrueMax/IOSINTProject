//
//  AppDelegate.swift
//  IOSINTProject
//
//  Created by Maxim on 2020. 10. 25..
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let coordinator = MainCoordinator()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = coordinator.navigator
        window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        //
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        //
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        //
    }
}

