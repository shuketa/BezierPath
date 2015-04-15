
import UIKit

class PinchOutView: UIView {
    
    private var upprtCircle: CAShapeLayer!
    
    private var upprtHalfCircle1: CAShapeLayer!
    private var upprtHalfCircle2: CAShapeLayer!
    private var upprtHalfCircle3: CAShapeLayer!
    private var upprtHalfCircle4: CAShapeLayer!
    
    
    private var lowerCircle: CAShapeLayer!
    
    private var lowerHalfCircle1: CAShapeLayer!
    private var lowerHalfCircle2: CAShapeLayer!
    private var lowerHalfCircle3: CAShapeLayer!
    private var lowerHalfCircle4: CAShapeLayer!
    
    let pathRect = CGRectMake(0,0,100,100)
    
    override func layoutSubviews() {
        super.layoutSubviews()
        createLayersIfNeeded()
    }
    
    
    private func createLayersIfNeeded() {
        if upprtCircle == nil {
            upprtCircle = CAShapeLayer()
            createCircle(upprtCircle,point:CGPointMake(300, 300))
        }
        
        if upprtHalfCircle1 == nil {
            upprtHalfCircle1 = CAShapeLayer()
            createHalfCircle(upprtHalfCircle1,point:Utils.screenCenter,radius:80)
        }
        if upprtHalfCircle2 == nil {
            upprtHalfCircle2 = CAShapeLayer()
            createHalfCircle(CAShapeLayer(),point:Utils.screenCenter,radius:100)
        }
        if upprtHalfCircle3 == nil {
            upprtHalfCircle3 = CAShapeLayer()
            createHalfCircle(CAShapeLayer(),point:Utils.screenCenter,radius:120)
        }
        if upprtHalfCircle4 == nil {
            upprtHalfCircle4 = CAShapeLayer()
            createHalfCircle(CAShapeLayer(),point:Utils.screenCenter,radius:140)
        }
    }
    
    private func createCircle(shapeLayer:CAShapeLayer, point:CGPoint) {
        shapeLayer.fillColor = UIColor.clearColor().CGColor
        shapeLayer.strokeColor = UIColor.blueColor().CGColor
        shapeLayer.lineWidth = 2
        shapeLayer.path = CGPath.rescaleForFrame(path: Paths.upperCurve, frame: pathRect)
        shapeLayer.bounds = CGPathGetBoundingBox(shapeLayer.path)
        shapeLayer.position = point
        //            starShape.transform = CATransform3DIdentity
        //            starShape.opacity = 0.5
        self.layer.addSublayer(shapeLayer)
    }
    
    private func createHalfCircle(shapeLayer:CAShapeLayer, point:CGPoint,radius:CGFloat) {
        shapeLayer.fillColor = UIColor.clearColor().CGColor
        shapeLayer.strokeColor = UIColor.blueColor().CGColor
        shapeLayer.lineWidth = 2
        shapeLayer.path = CGPath.rescaleForFrame(path: Paths.upperHalfCircle(radius), frame: pathRect)
        shapeLayer.bounds = CGPathGetBoundingBox(shapeLayer.path)
        
        shapeLayer.position = point
        self.layer.addSublayer(shapeLayer)
    }
    
    /// 1.
    func didStartUpperPan(point:CGPoint) {
        self.upprtCircle.path = CGPath.rescaleForFrame(path: Paths.downCircle, frame: pathRect)
        
        didMoveUpperPan(point)
    }
    
    /// 2.
    func didMoveUpperPan(point:CGPoint) {
        self.upprtCircle.position = point
        self.upprtHalfCircle1.position = point
        self.upprtHalfCircle2.position = point
        self.upprtHalfCircle3.position = point
        self.upprtHalfCircle4.position = point
    }
    
    /// 3.
    func didEndUpperPan() {
        
        self.upprtCircle.path = CGPath.rescaleForFrame(path: Paths.upperCurve, frame: pathRect)
        self.upprtCircle.bounds = CGPathGetBoundingBox(self.upprtCircle.path)

        didMoveUpperPan(Utils.screenCenter)
    }
}

