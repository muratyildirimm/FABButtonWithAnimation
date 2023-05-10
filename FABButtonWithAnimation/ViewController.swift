
import UIKit

class ViewController: UIViewController {
  // MARK: IBOutlet
  @IBOutlet weak var fabCamera: UIButton!
  @IBOutlet weak var fabClock: UIButton!
  @IBOutlet weak var fabMain: UIButton!
  // MARK: Variable
  var state = false
  
  override func viewDidLoad() {
    super.viewDidLoad()
    makeOval()
    invisible()
    scale()
  }
  
  @IBAction func fabMainTouch(_ sender: Any) {
    UIView.animate(withDuration: 0.5, animations: {
      if self.state {
        self.fabClock.alpha = 0
        self.fabCamera.alpha = 0
        self.fabMain.transform = CGAffineTransform(rotationAngle: 0 * .pi/180)
        self.fabClock.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.fabCamera.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.state = false
      } else {
        self.fabClock.alpha = 1
        self.fabCamera.alpha = 1
        self.fabMain.transform = CGAffineTransform(rotationAngle: 45 * .pi/180)
        self.fabClock.transform = CGAffineTransform(scaleX: 1, y: 1)
        self.fabCamera.transform = CGAffineTransform(scaleX: 1, y: 1)
        self.state = true
      }
    }, completion: nil)
  }
  // Making the buttons oval
  func makeOval() {
    fabMain.layer.cornerRadius = fabMain.frame.size.width/2
    fabClock.layer.cornerRadius = fabClock.frame.size.width/2
    fabCamera.layer.cornerRadius = fabCamera.frame.size.width/2
  }
  // I want them to be invisible at first
  func invisible() {
    self.fabClock.alpha = 0
    self.fabCamera.alpha = 0
  }
  // I want it to be small size at first
  func scale() {
    self.fabClock.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
    self.fabCamera.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
  }
}

