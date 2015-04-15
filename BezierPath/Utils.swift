
import UIKit

struct Utils {
    
    static var screenCenter: CGPoint {
        let height = UIScreen.mainScreen().bounds.size.height
        let width  = UIScreen.mainScreen().bounds.size.width
        return CGPoint(x: ceil(width/2), y: ceil(height/2))
    }
}
