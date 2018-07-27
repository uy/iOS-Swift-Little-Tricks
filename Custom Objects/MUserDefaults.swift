import Foundation

class MUserDefaults: UserDefaults {
    private enum Keys: String {
        case firstLogin = "FirstLogin"
    }
    
    static func checkFirstLogin() -> Bool {
        print(standard.bool(forKey: Keys.firstLogin.rawValue))
        switch standard.bool(forKey: Keys.firstLogin.rawValue) {
        case false:
            standard.set(true, forKey: Keys.firstLogin.rawValue)
            return true
        case true:
            return false
        }
    }
}
