*GM-Core
gmRegisterToKeyHandler
    self assureExtension.
    self extension eventHandler: (GMKeyHandler new).
    ActiveHand newKeyboardFocus: self.