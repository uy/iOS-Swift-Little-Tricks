// Define
extension NSMutableAttributedString {
    @discardableResult func bold(_ text:String) -> NSMutableAttributedString {
        let attrs: [String: AnyObject] = [NSFontAttributeName: UIFont.boldSystemFont(ofSize: UIFont.systemFontSize)]
        let boldString = NSMutableAttributedString(string:"\(text)", attributes:attrs)
        self.append(boldString)
        return self
    }
    
    @discardableResult func normal(_ text:String)->NSMutableAttributedString {
        let normal =  NSAttributedString(string: text, attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 16)])
        self.append(normal)
        return self
    }
    
    @discardableResult func newLine() -> NSMutableAttributedString {
        let newLine = NSMutableAttributedString(string: "\n")
        self.append(newLine)
        return self
    }
    
    @discardableResult func counterBig(_ text: String) -> NSMutableAttributedString {
        let style = NSMutableParagraphStyle()
        style.alignment = NSTextAlignment.center
        
        let attr: [String: AnyObject] = [NSFontAttributeName: UIFont.systemFont(ofSize: UIFont.systemFontSize + 3),
                                         NSParagraphStyleAttributeName: style,
                                         NSForegroundColorAttributeName: UIColor.white]
        let str = NSMutableAttributedString(string: text, attributes: attr)
        self.append(str)
        
        return self
    }
    
    @discardableResult func normalCenter(text: String) -> NSMutableAttributedString {
        let style = NSMutableParagraphStyle()
        style.alignment = NSTextAlignment.center
        
        let attr: [String: AnyObject] = [NSFontAttributeName: UIFont.systemFont(ofSize: UIFont.systemFontSize),
                                         NSParagraphStyleAttributeName: style,
                                         NSForegroundColorAttributeName: UIColor.white]
        
        let normal =  NSAttributedString(string: text, attributes: attr)
        self.append(normal)
        
        return self
    }
}

// Swift 4.2
extension NSMutableAttributedString {
    @discardableResult func bold(_ text:String) -> NSMutableAttributedString {
        let attrs: [NSAttributedString.Key:Any] = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: UIFont.systemFontSize)]
        let boldString = NSMutableAttributedString(string:"\(text)", attributes:attrs)
        self.append(boldString)
        return self
    }
    
    @discardableResult func normal(_ text:String)->NSMutableAttributedString {
        let normal =  NSAttributedString(string: text, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16)])
        self.append(normal)
        return self
    }
    
    @discardableResult func newLine() -> NSMutableAttributedString {
        let newLine = NSMutableAttributedString(string: "\n")
        self.append(newLine)
        return self
    }
    
    @discardableResult func counterBig(_ text: String) -> NSMutableAttributedString {
        let style = NSMutableParagraphStyle()
        style.alignment = NSTextAlignment.center
        
        let attr: [NSAttributedString.Key:Any] = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: UIFont.systemFontSize + 3),
                                                  NSAttributedString.Key.paragraphStyle: style,
                                                  NSAttributedString.Key.foregroundColor: UIColor.white]
        let str = NSMutableAttributedString(string: text, attributes: attr)
        self.append(str)
        
        return self
    }
    
    @discardableResult func normalCenter(text: String) -> NSMutableAttributedString {
        let style = NSMutableParagraphStyle()
        style.alignment = NSTextAlignment.center
        
        let attr: [NSAttributedString.Key:Any] = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: UIFont.systemFontSize),
                                                  NSAttributedString.Key.paragraphStyle: style,
                                                  NSAttributedString.Key.foregroundColor: UIColor.white]
        
        let normal =  NSAttributedString(string: text, attributes: attr)
        self.append(normal)
        
        return self
    }
}
