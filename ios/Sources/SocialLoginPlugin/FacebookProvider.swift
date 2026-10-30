import Foundation
import UIKit

struct FacebookLoginResponse {
    let accessToken: [String: Any]?
    let profile: [String: Any]
    let idToken: String?
    let isLimitedLogin: Bool
}

class FacebookProvider {
    func initialize() {
        // Facebook provider is not available in this fork
    }

    func getProfile(fields: [String], completion: @escaping (Result<[String: Any]?, Error>) -> Void) {
        completion(.failure(NSError(domain: "FacebookProvider", code: -1, userInfo: [NSLocalizedDescriptionKey: "Facebook Login is not available"])))
    }

    func isLoggedIn() -> Bool {
        return false
    }

    func login(payload: [String: Any], completion: @escaping (Result<FacebookLoginResponse, Error>) -> Void) {
        completion(.failure(NSError(domain: "FacebookProvider", code: -1, userInfo: [NSLocalizedDescriptionKey: "Facebook Login is not available"])))
    }

    func logout(completion: @escaping (Result<Void, Error>) -> Void) {
        completion(.failure(NSError(domain: "FacebookProvider", code: -1, userInfo: [NSLocalizedDescriptionKey: "Facebook Login is not available"])))
    }

    func refresh(viewController: UIViewController?, completion: @escaping (Result<SocialLoginUser, Error>) -> Void) {
        completion(.failure(NSError(domain: "FacebookProvider", code: -1, userInfo: [NSLocalizedDescriptionKey: "Facebook Login is not available"])))
    }

    func getAuthorizationCode(completion: @escaping (Result<(accessToken: String?, jwt: String?), Error>) -> Void) {
        completion(.failure(NSError(domain: "FacebookProvider", code: -1, userInfo: [NSLocalizedDescriptionKey: "Facebook Login is not available"])))
    }

    func requestTracking(completion: @escaping (Result<String, Error>) -> Void) {
        completion(.failure(NSError(domain: "FacebookProvider", code: -1, userInfo: [NSLocalizedDescriptionKey: "Facebook Login is not available"])))
    }
}
