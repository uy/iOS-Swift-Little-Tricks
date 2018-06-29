// Used for type of constraint
enum ConstraintType {
    case rightToRight
    case leftToLeft
    case toTop
    case toBottom
    case bottomToTop
    case topToBottom
    case rightToLeft
    case leftToRight
    case centerToCenterY
    case centerToCenterX
    case height
    case width
    case ratio
}

// Simple way to make constraint
extension NSLayoutConstraint {
    convenience init(this: Any, matchLike: ConstraintType, to: Any?, by: CGFloat = 0, multiplier: CGFloat = 1) {
        switch matchLike {
            
        case .rightToRight:
            self.init(item: this, attribute: .trailing, relatedBy: .equal, toItem: to, attribute: .trailing, multiplier: multiplier, constant: by * -1)
            
        case .leftToLeft:
            self.init(item: this, attribute: .leading, relatedBy: .equal, toItem: to, attribute: .leading, multiplier: multiplier, constant: by)
            
        case .toTop:
            self.init(item: this, attribute: .top, relatedBy: .equal, toItem: to, attribute: .top, multiplier: multiplier, constant: by)
            
        case .toBottom:
            self.init(item: this, attribute: .bottom, relatedBy: .equal, toItem: to, attribute: .bottom, multiplier: multiplier, constant: by * -1)
            
        case .topToBottom:
            self.init(item: this, attribute: .top, relatedBy: .equal, toItem: to, attribute: .bottom, multiplier: multiplier, constant: by)
            
        case .bottomToTop:
            self.init(item: this, attribute: .bottom, relatedBy: .equal, toItem: to, attribute: .top, multiplier: multiplier, constant: by)
            
        case .rightToLeft:
            self.init(item: this, attribute: .trailing, relatedBy: .equal, toItem: to, attribute: .leading, multiplier: multiplier, constant: by)
            
        case .leftToRight:
            self.init(item: this, attribute: .leading, relatedBy: .equal, toItem: to, attribute: .trailing, multiplier: multiplier, constant: by)
            
        case .centerToCenterY:
            self.init(item: this, attribute: .centerY, relatedBy: .equal, toItem: to, attribute: .centerY, multiplier: multiplier, constant: by)
            
        case .centerToCenterX:
            self.init(item: this, attribute: .centerX, relatedBy: .equal, toItem: to, attribute: .centerX, multiplier: multiplier, constant: by)
            
        case .height:
            self.init(item: this, attribute: .height, relatedBy: .equal, toItem: to, attribute: .height, multiplier: multiplier, constant: by)
            
        case .width:
            self.init(item: this, attribute: .width, relatedBy: .equal, toItem: to, attribute: .width, multiplier: multiplier, constant: by)
            
        case .ratio:
            self.init(item: this, attribute: .height, relatedBy: .equal, toItem: to, attribute: .width, multiplier: multiplier, constant: by)
            
        }
    }
}

//---------------------------------------------------------------------

// Sample usage
override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
  let cell = super.tableView(tableView, cellForRowAt: indexPath)
  cell.addSubview(email)
            
  email.translatesAutoresizingMaskIntoConstraints = false
  cell.addConstraint(NSLayoutConstraint.init(this: email, matchLike: .leftToLeft, to: cell, by: 16))
  cell.addConstraint(NSLayoutConstraint.init(this: email, matchLike: .rightToRight, to: cell, by: 16))
  cell.addConstraint(NSLayoutConstraint.init(this: email, matchLike: .toTop, to: cell, by: 32))
  
  return cell
}
