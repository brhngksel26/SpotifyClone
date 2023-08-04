//
//  TabBarViewController.swift
//  SpotifyClone
//
//  Created by Burhan Göksel on 5.08.2023.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let homeViewController = HomeViewController()
        let searchViewController = SearchViewController()
        let libraryViewController = LibraryViewController()
        
        homeViewController.title = "Browse"
        searchViewController.title = "Search"
        libraryViewController.title = "Library"
        
        homeViewController.navigationItem.largeTitleDisplayMode = .always
        searchViewController.navigationItem.largeTitleDisplayMode = .always
        libraryViewController.navigationItem.largeTitleDisplayMode = .always
        
        let homeNavigation = UINavigationController(rootViewController: homeViewController)
        let searchNavigation = UINavigationController(rootViewController: searchViewController)
        let libraryNavigation = UINavigationController(rootViewController: libraryViewController)
        
        homeNavigation.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        searchNavigation.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        libraryNavigation.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "music.note.list"), tag: 1)
        
        homeNavigation.navigationBar.prefersLargeTitles = true
        searchNavigation.navigationBar.prefersLargeTitles = true
        libraryNavigation.navigationBar.prefersLargeTitles = true
        
        setViewControllers([homeNavigation, searchNavigation, libraryNavigation], animated: false)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
