// Define
extension UIScrollView {
    // We agree content's size is equal as scrollView's layer width
    func moveToIndex(index: Int) {
        let pointX = CGFloat(index) * self.layer.width
        self.setContentOffset(CGPoint(x: pointX, y: self.contentOffset.y), animated: true)
    }
}

// Usage
self.scrollView.moveToIndex(index: self.indexForContent)
