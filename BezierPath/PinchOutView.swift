
import UIKit

class PinchOutView: UIView {

    private var starShape: CAShapeLayer!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        createLayersIfNeeded()
    }
    private func createLayersIfNeeded() {
        if starShape == nil {
            var starFrame = self.bounds
            starFrame.size.width = CGRectGetWidth(starFrame)/2.5
            starFrame.size.height = CGRectGetHeight(starFrame)/2.5
            
            starShape = CAShapeLayer()
            starShape.fillColor = UIColor.clearColor().CGColor
            starShape.strokeColor = UIColor.blueColor().CGColor
            starShape.lineWidth = 2;
            starShape.path = CGPath.rescaleForFrame(path: Paths.upperCurve, frame: starFrame)
            starShape.bounds = CGPathGetBoundingBox(starShape.path)
            starShape.position = CGPoint(x: 200, y: 300)
//            starShape.transform = CATransform3DIdentity
//            starShape.opacity = 0.5
            self.layer.addSublayer(starShape)
            
            
            Async.main(after: 2, block: {
                self.starShape.path = CGPath.rescaleForFrame(path: Paths.downCircle, frame: starFrame)
                self.starShape.position = CGPoint(x: 200, y: 400)
                
                Async.main(after: 2, block: {
                    self.starShape.path = CGPath.rescaleForFrame(path: Paths.upperCurve, frame: starFrame)
                    self.starShape.bounds = CGPathGetBoundingBox(self.starShape.path)
                    self.starShape.position = CGPoint(x: 200, y: 300)
                })
            })
        }
    }
    
}

