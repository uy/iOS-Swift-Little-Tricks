// Used for type of constraint
enum ConstraintType {
    case rightToRight
    case leftToLeft
    case toTop
    case leftToRight
    case centerToCenter
}

// Simple way to make constraint
extension NSLayoutConstraint {
    convenience init(this: Any, matchLike: ConstraintType, to: Any?, by: CGFloat) {
        switch matchLike {
        case .rightToRight:
            self.init(item: this, attribute: .trailing, relatedBy: .equal, toItem: to, attribute: .trailing, multiplier: Constants.constraintMultiplier1, constant: by * -1)
        case .leftToLeft:
            self.init(item: this, attribute: .leading, relatedBy: .equal, toItem: to, attribute: .leading, multiplier: Constants.constraintMultiplier1, constant: by)
        case .toTop:
            self.init(item: this, attribute: .top, relatedBy: .equal, toItem: to, attribute: .top, multiplier: Constants.constraintMultiplier1, constant: by)
        case .leftToRight:
            self.init(item: this, attribute: .leading, relatedBy: .equal, toItem: to, attribute: .trailing, multiplier: Constants.constraintMultiplier1, constant: by)
        case .centerToCenter:
            self.init(item: this, attribute: .centerY, relatedBy: .equal, toItem: to, attribute: .centerY, multiplier: Constants.constraintMultiplier1, constant: by)
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
