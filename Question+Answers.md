[How to perform sequential request with Alamofire and update a progressHUD at every step in Swift 3](https://stackoverflow.com/questions/40555188/how-to-perform-sequential-request-with-alamofire-and-update-a-progresshud-at-eve)

---

[How can I force landscape mode in one viewController](https://stackoverflow.com/a/48490331/1545139)

[__my resolution is here](https://stackoverflow.com/a/53263160/1545139)

---

[When landscape, textField's inputAccessoryView doesn't shown](https://stackoverflow.com/a/46421548/1545139)

---

[Animating autoLayout doesn't work](https://stackoverflow.com/questions/32170893/animate-autolayout-constraints-doesnt-work-on-ios-7)

---

[When can I activate/deactivate layout constraints?](https://stackoverflow.com/a/28717185/1545139)
```
TL;DR: Delete weak statement from IB Outlet decleration.
```

---

[How to angle a uilabel in ios [duplicate]](https://stackoverflow.com/a/17523030/1545139)

---

[UITableViewCell animation](https://stackoverflow.com/a/46928194/1545139)
```
TL;DR: Use 'func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath)' from UITableViewDelegate
```

---

[WKWebView is not loading url](https://stackoverflow.com/a/47605305/1545139)
```
TL;DR: you just need to take permission of TransportSecurit to YES in info.plist file
```

---

[How can i change marker icon while clustering, Google Maps, iOS](https://stackoverflow.com/a/39788560/1545139)
```
TL;DR: You should add your code to below function, for adding custom marker icon
- (GMSMarker *)markerWithPosition:(CLLocationCoordinate2D)position
                             from:(CLLocationCoordinate2D)from
                         userData:(id)userData
                      clusterIcon:(UIImage *)clusterIcon
                         animated:(BOOL)animated
```

---

[Move a view up only when the keyboard covers an input field](https://stackoverflow.com/a/28813720)
```
Gist for my solution is [here](https://gist.github.com/uy/783ab5bbeeea84a5a4288d12384b05a3).
```

---

[How to set cornerRadius for only top-left and top-right corner of a UIView?](https://stackoverflow.com/a/41197790)
```swift
extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}
```

---

[TextField's value change handling](https://stackoverflow.com/a/34783809)
```swift
// case: textfields' isEnabled property depend on each other's value

// Setup Func
private func setupTextfields() {
    tfSerialNumber.tag = 1
    tfSerialNumber.addTarget(self, action: #selector(textFieldValueChanged(textField:)), for: .editingChanged)

    tfRequestNumber.tag = 2
    tfRequestNumber.addTarget(self, action: #selector(textFieldValueChanged(textField:)), for: .editingChanged)
}

// Target Func
@objc private func textFieldValueChanged(textField: UITextField) {
    if let t = tfSerialNumber.text {
        if !t.isEmpty {
            tfRequestNumber.text = ""
            tfRequestNumber.isEnabled = false
        } else {
            tfRequestNumber.isEnabled = true
        }
    }
    if let t = tfRequestNumber.text {
        if !t.isEmpty {
            tfSerialNumber.text = ""
            tfSerialNumber.isEnabled = false
        } else {
            tfSerialNumber.isEnabled = true
        }
    }
}
```

---

[Moya : Parameter Encoding for POST method not working. #1116](https://github.com/Moya/Moya/issues/1116)
```swift
public var parameterEncoding: ParameterEncoding {
    switch self {
    case .postMethodButParametersShouldSendOverURL:
        return URLEncoding(destination: .queryString)
    default:
        return URLEncoding.default
    }
}
```

---
