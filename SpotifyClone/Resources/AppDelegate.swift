//
//  AppDelegate.swift
//  SpotifyClone
//
//  Created by Burhan Göksel on 5.08.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        if AuthManager.shared.isSignedIn {
            AuthManager.shared.refreshIfNeeded(completion: nil)
            window.rootViewController = TabBarViewController()
        }
        else {
            let navigationViewController = UINavigationController(rootViewController: WelcomeViewController())
            navigationViewController.navigationBar.prefersLargeTitles = true
            navigationViewController.viewControllers.first?.navigationItem.largeTitleDisplayMode = .always
            window.rootViewController = navigationViewController
        }
        
        
        window.makeKeyAndVisible()
        self.window = window
        
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }


}

