//
//  AuthManager.swift
//  SpotifyClone
//
//  Created by Burhan Göksel on 5.08.2023.
//

import Foundation

final class AuthManager{
    static let shared = AuthManager()
    
    struct Constants {
        static let clientID = "4c1366b54f8f433382c49182525f8e76"
        static let clientSecret = "8049d401ea9844e8a2bb7d32d6b22e9f"
    }
    
    private init() {}
    


         
    public var signInURL: URL? {
        let scopes = "user-read-private"
        let redirectURI = "https://www.google.com.tr"
        let baseURL = "https://accounts.spotify.com/authorize"
        let string = "\(baseURL)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
        return URL(string: string)
    }
    
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
    
    public func exchangeCodeForToken(code: String, completion: @escaping ((Bool) -> Void)) {
        
    }
    
    public func refreshAccessToken(){
        
    }
    
    public func cacheToken(){
        
    }
}
