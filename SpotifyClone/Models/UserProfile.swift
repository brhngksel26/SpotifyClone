//
//  UserProfile.swift
//  SpotifyClone
//
//  Created by Burhan Göksel on 5.08.2023.
//

import Foundation

struct UserProfile: Codable {
    let country: String
    let display_name: String
    let email: String
    let explicit_urls: [String: Int]
    let external_urls: [String: String]
    let id: String
    let product: String
    let images: [UserImage]
}

struct UserImage: Codable {
    let url: String
}
