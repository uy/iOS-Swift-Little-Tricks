import UIKit

extension UIFont {
    static func printFontFamiliesAndContainedFonts {
        for family in UIFont.familyNames {
            print("=> \(family)")
            for member in UIFont.fontNames(forFamilyName: family) {
                print("↳ \(member)")
            }
        }
    }
}
