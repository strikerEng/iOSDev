//
//  AppDelegate.swift
//  AppDelegateApp
//
//  Created by Kire  on 6/29/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    // Properties that will be accessed by ViewController.swift
    var sliderData: Float = 0.5
    var textFieldData = ""
    var switchData = true

    // Allows another file to access the properties in this file
    static func shared() -> AppDelegate{
        return UIApplication.shared.delegate as! AppDelegate
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        print("The app did launch.")
        
        // Retreive any user defaults
        switchData = UserDefaults.standard.bool(forKey: "Switch")
        sliderData = UserDefaults.standard.float(forKey: "Slider")
        if let _ = UserDefaults.standard.string(forKey: "Text"){
            textFieldData = UserDefaults.standard.string(forKey: "Text")!
        }else{
            textFieldData = ""
        }
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Save user data in the user defaults database
    }
    
    


}

