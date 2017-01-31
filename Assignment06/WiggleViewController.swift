//
//  ViewController.swift
//  Assignment06
//
//  Created by Student on 31/01/2017.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class WiggleViewController: UIViewController {

    @IBOutlet weak var stackWhole: UIStackView!
    @IBOutlet weak var view0: UIView!
    
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    
    @IBOutlet weak var view4: UIView!
    
    @IBOutlet weak var view5: UIView!
    
    @IBOutlet weak var view6: UIView!
    
    
    @IBOutlet weak var view7: UIView!
    
    
    @IBOutlet weak var view8: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // Do any additional setup after loading the view, typically from a nib.
        let trans = CGAffineTransform(translationX: 0, y: 0)
        
        UIView.animateKeyframes(withDuration: 0.40, delay: 0, options: .repeat, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.1, animations: {
                let rotate1 = CGAffineTransform(rotationAngle: CGFloat.pi/25.0)
                let combined1 = rotate1.concatenating(trans)
                self.view0?.transform=combined1
                self.view1?.transform=combined1
                self.view2?.transform=combined1
                self.view3?.transform=combined1
                self.view4?.transform=combined1
                self.view5?.transform=combined1
                self.view6?.transform=combined1
                self.view7?.transform=combined1
                self.view8?.transform=combined1
                
            })
            UIView.addKeyframe(withRelativeStartTime: 0.1, relativeDuration: 0.1, animations: {
                let rotate2 = CGAffineTransform(rotationAngle: CGFloat(0))
                let combined2 = rotate2.concatenating(trans)
                self.view0?.transform=combined2
                self.view1?.transform=combined2
                self.view2?.transform=combined2
                self.view3?.transform=combined2
                self.view4?.transform=combined2
                self.view5?.transform=combined2
                self.view6?.transform=combined2
                self.view7?.transform=combined2
                self.view8?.transform=combined2
            })
            UIView.addKeyframe(withRelativeStartTime: 0.2, relativeDuration: 0.1, animations: {
                let rotate3 = CGAffineTransform(rotationAngle: -(CGFloat.pi/25))
                let combined3 = rotate3.concatenating(trans)
                self.view0?.transform=combined3
                self.view1?.transform=combined3
                self.view2?.transform=combined3
                self.view3?.transform=combined3
                self.view4?.transform=combined3
                self.view5?.transform=combined3
                self.view6?.transform=combined3
                self.view7?.transform=combined3
                self.view8?.transform=combined3
            })
            UIView.addKeyframe(withRelativeStartTime: 0.3, relativeDuration: 0.1, animations: {
                let rotate2 = CGAffineTransform(rotationAngle: CGFloat(0))
                let combined2 = rotate2.concatenating(trans)
                self.view0?.transform=combined2
                self.view1?.transform=combined2
                self.view2?.transform=combined2
                self.view3?.transform=combined2
                self.view4?.transform=combined2
                self.view5?.transform=combined2
                self.view6?.transform=combined2
                self.view7?.transform=combined2
                self.view8?.transform=combined2
            })
            }, completion: { (_) in
                print("finished")
        })
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


}

