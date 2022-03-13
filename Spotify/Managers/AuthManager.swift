//
//  AuthManager.swift
//  Spotify
//
//  Created by Quang Duc on 11/03/2022.
//

import Foundation


final class AuthManager {
    static let shared = AuthManager()

    struct Constants {
        static let clientID = "fc9c4b9b8f754e55bf4a7dc92fe313c3"
    }
    private init() { }

    public var signInURL: URL? {
        let scopes = "user-read-private"
        let redirectURI = "http://localhost:3000/callback/"
        let baseURL = "https://accounts.spotify.com/authorize"
        let string = "\(baseURL)?response_type=code&client_id=\(Constants.clientID)" +
            "&scope=\(scopes)&redirect_uri=\(redirectURI)&show_dialog=TRUE"

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

    private var tokenExpirationData: Date? {
        return nil
    }

    private var shouldRefreshToken: Bool {
        return false
    }
}
