
import UIKit
import AudioToolbox

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var pan1 = UIPanGestureRecognizer(target:self,action:"panUpper:")
        view.addGestureRecognizer(pan1)
        
        var pan2 = UIPanGestureRecognizer(target:self,action:"panLower:")
        view.addGestureRecognizer(pan2)
        
        Async.main(after: 10) {
            self.playSound()
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.scrollView.contentSize = self.imageView.bounds.size
    }
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return self.imageView
    }
    
    
    func panUpper(gr:UIPanGestureRecognizer)
    {
        var p = gr.locationInView(self.view)
    
        let height = UIScreen.mainScreen().bounds.size.height
        let width  = UIScreen.mainScreen().bounds.size.width
        
        println("panUpper: p.x = \(p.x), p.y = \(p.y), height = \(height), width = \(width)")
        
        switch(gr.state) {
        case .Began:
            let v = view as! PinchOutView
            v.didStartUpperPan(p)
        case .Changed:
            let v = view as! PinchOutView
            v.didMoveUpperPan(p)
        case .Ended:
            let v = view as! PinchOutView
            v.didEndUpperPan()
        default:
            break
        }
    }
    
    
    func panLower(gr:UIPanGestureRecognizer)
    {
        var p = gr.locationInView(self.view)
        
        let height = UIScreen.mainScreen().bounds.size.height
        let width  = UIScreen.mainScreen().bounds.size.width
        
        println("panLower: p.x = \(p.x), p.y = \(p.y), height = \(height), width = \(width)")
        
        if p.y > (height/2) {
            let v = view as! PinchOutView
            //v.moveUpperCircle()
        }
    }
    
    private func playSound() {
        var soundIdRing:SystemSoundID = 0
        let soundUrl = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("fanfare", ofType:"wav")!)
        AudioServicesCreateSystemSoundID(soundUrl, &soundIdRing)
        AudioServicesPlaySystemSound(soundIdRing)
    }
}

