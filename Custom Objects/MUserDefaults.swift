import Foundation

class MUserDefaults: UserDefaults {
    private enum Keys: String {
        case firstLogin = "FirstLogin"
        case token = "Token"
    }
    
    static func checkFirstLogin() -> Bool {
        switch standard.bool(forKey: Keys.firstLogin.rawValue) {
        case false:
            standard.set(true, forKey: Keys.firstLogin.rawValue)
            return true
        case true:
            return false
        }
    }
    
    static func getToken() -> String? {
        return standard.string(forKey: Keys.token.rawValue)
    }
    
    static func set(token: String) {
        standard.set(token, forKey: Keys.token.rawValue)
    }
}
