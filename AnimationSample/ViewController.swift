//
//  ViewController.swift
//  AnimationSample
//
//  Created by 水野祥子 on 2018/03/06.
//  Copyright © 2018年 sachiko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sampleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        sampleView.boundAnimation(Speed:0.1)
//        sampleView.TransmissionAnimation()
//        sampleView.AddTopAnimation(AddY:30)
//        sampleView.rotationAnimation()
//        sampleView.backgroundColorAnimation()
        
        
//        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveEaseIn, .autoreverse], animations: {
//            self.sampleView.center.y += 100.0
//        }) { _ in
//            self.sampleView.center.y -= 100.0
//        }
        
        
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.autoreverse, .repeat], animations: {
            self.sampleView.center.y += 100.0
        }, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

