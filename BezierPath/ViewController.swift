
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        p1 = CGPointMake(94, 234);
        p2 = CGPointMake(214, 230);
        p3 = CGPointMake(265, 161);
        p4 = CGPointMake(65, 139);
        p5 = CGPointMake(80, 236);
        
        cp2 = CGPointMake(158, 165);
        cp3 = CGPointMake(285, 241);
        cp4 = CGPointMake(157, 27);
        cp5 = CGPointMake(14, 238);
        self.updateLine()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var p1:CGPoint = CGPointZero
    var p2:CGPoint = CGPointZero
    var p3:CGPoint = CGPointZero
    var p4:CGPoint = CGPointZero
    var p5:CGPoint = CGPointZero
    
    var cp2:CGPoint = CGPointZero
    var cp3:CGPoint = CGPointZero
    var cp4:CGPoint = CGPointZero
    var cp5:CGPoint = CGPointZero
    
    var sl:CAShapeLayer = CAShapeLayer()
    
    private func setup()
    {
        
        sl = CAShapeLayer(layer:self.view.layer)
        sl.fillColor = UIColor.clearColor().CGColor
        sl.strokeColor = UIColor.greenColor().CGColor
        sl.lineWidth = 5
        self.view.layer.addSublayer(sl)
        
        p1 = CGPointMake(160, 20);
        p2 = CGPointMake(160, 120);
        p3 = CGPointMake(160, 220);
        p4 = CGPointMake(160, 320);
        p5 = CGPointMake(160, 420);
        
        cp2 = CGPointMake(160, 120);
        cp3 = CGPointMake(160, 220);
        cp4 = CGPointMake(160, 320);
        cp5 = CGPointMake(160, 420);
        self.updateLine()
        
        let points:[CGPoint] = [p1, p2, p3, p4, p5]
        
        for var i=0; i<5; i++ {
            var pv = UIView(frame:CGRectMake(0, 0, 30, 30))
            pv.tag = i
            pv.layer.cornerRadius = 15
            pv.backgroundColor = UIColor.greenColor()
            pv.center = points[i]
            self.view.addSubview(pv)
            
            var pan = UIPanGestureRecognizer(target:self,action:"panP:")
            pv.addGestureRecognizer(pan)
        }
        
        let cpoints:[CGPoint] = [cp2, cp3, cp4, cp5]
        for var i=0; i<4; i++ {
            var cpv = UIView(frame:CGRectMake(0, 0, 14, 14))
            cpv.tag = i
            cpv.layer.cornerRadius = 7
            cpv.backgroundColor = UIColor.redColor()
            cpv.center = cpoints[i]
            self.view.addSubview(cpv)
            
            let pan = UIPanGestureRecognizer(target:self,action:"panCP:")
            cpv.addGestureRecognizer(pan)
        }
    }
    
    
    
    func panP(gr:UIPanGestureRecognizer)
    {
        var p = gr.locationInView(self.view)
        gr.view!.center = p
        
        switch gr.view!.tag {
        case 0: p1 = p; break
        case 1: p2 = p; break
        case 2: p3 = p; break
        case 3: p4 = p; break
        case 4: p5 = p; break
        default: break
        }
        self.updateLine()
    }
    
    func panCP(gr:UIPanGestureRecognizer)
    {
        var p = gr.locationInView(self.view)
        gr.view!.center = p
        
        switch gr.view!.tag {
        case 0: cp2 = p; break
        case 1: cp3 = p; break
        case 2: cp4 = p; break
        case 3: cp5 = p; break
        default: break
        }
        self.updateLine()
    }
    
    func updateLine()
    {
        var path = UIBezierPath()
        path.moveToPoint(p1)
        path.addQuadCurveToPoint(p2,controlPoint:cp2)
        path.addQuadCurveToPoint(p3,controlPoint:cp3)
        path.addQuadCurveToPoint(p4,controlPoint:cp4)
        path.addQuadCurveToPoint(p5,controlPoint:cp5)
        
        println("p1 = \(p1), p2 = \(p2), cp2 = \(cp2), p3 = \(p3), cp3 = \(cp3), p4 = \(p4), cp4 = \(cp4), p5 = \(p5), cp5 = \(cp5)")
        sl.path = path.CGPath
    }
    
}

