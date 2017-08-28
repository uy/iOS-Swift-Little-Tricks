
let effect = UIBlurEffect(style: .light)
let effectView = UIVisualEffectView(effect: effect)
effectView.frame = self.frame
effectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
self.insertSubview(effectView, at: 0)
