//
//  SceneDelegate.swift
//  SpotifyClone
//
//  Created by Burhan Göksel on 5.08.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene:windowScene)
        
        if AuthManager.shared.isSignedIn {
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
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }


}

