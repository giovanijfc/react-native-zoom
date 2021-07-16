@objc (RandomNumberGeneratorViewManager)
class RandomNumberGeneratorViewManager: RCTViewManager {
    
    override static func requiresMainQueueSetup() -> Bool {
        return true
    }
    
    override func view() -> UIView! {
        return RandomNumberGeneratorView()
    }
}
