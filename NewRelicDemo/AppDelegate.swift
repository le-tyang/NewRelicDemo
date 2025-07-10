//
//  AppDelegate.swift
//  NewRelicDemo
//
//  Created by Tyler Yang on 10/7/2025.
//

import UIKit
import NewRelic

class AppDelegate: NSObject, UIApplicationDelegate, ObservableObject {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions
        launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        NewRelic.start(withApplicationToken: "YOUR_API_KEY")
        return true
    }
}
