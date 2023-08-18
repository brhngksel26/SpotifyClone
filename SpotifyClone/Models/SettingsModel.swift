//
//  SettingsModel.swift
//  SpotifyClone
//
//  Created by Burhan Göksel on 17.08.2023.
//

import Foundation

struct Section {
    let title: String
    let options: [Option]
}

struct Option {
    let title: String
    let handler: () -> Void
}
