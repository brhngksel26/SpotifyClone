//
//  ViewController.swift
//  SpotifyClone
//
//  Created by Burhan Göksel on 5.08.2023.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        view.backgroundColor = .systemBackground
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"),
                                                            style: .done,
                                                            target: self,
                                                            action: #selector(didTapSettings))
    }
    
    @objc func didTapSettings() {
        let viewController = SettingsViewController()
        viewController.title = "Settings"
        viewController.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(viewController, animated: true)
    }


}

