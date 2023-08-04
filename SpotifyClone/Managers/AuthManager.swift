//
//  AuthManager.swift
//  SpotifyClone
//
//  Created by Burhan Göksel on 5.08.2023.
//

import Foundation

final class AuthManager{
    static let shared = AuthManager()
    
    private init() {}
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
}
