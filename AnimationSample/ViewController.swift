//
//  ViewController.swift
//  AnimationSample
//
//  Created by 水野祥子 on 2018/03/06.
//  Copyright © 2018年 sachiko. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    @IBOutlet weak var sampleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
// MARK: - パターン1
//        sampleView.boundAnimation(Speed:0.1)
//        sampleView.TransmissionAnimation()
//        sampleView.AddTopAnimation(AddY:30)
//        sampleView.rotationAnimation()
//        sampleView.backgroundColorAnimation()
        
        
// MARK: - パターン2
//        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveEaseIn, .autoreverse], animations: {
//            self.sampleView.center.y += 100.0
//        }) { _ in
//            self.sampleView.center.y -= 100.0
//        }
        
        
//        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.autoreverse, .repeat], animations: {
//            self.sampleView.center.y += 100.0
//        }, completion: nil)
        
// MARK: - パターン3 skView
//        let skView = SKView(frame: self.view.frame)
//        skView.allowsTransparency = true
//        let scene = SKScene(size: self.view.frame.size)
//        scene.backgroundColor = UIColor.clear
//        let path = Bundle.main.path(forResource: "MyParticle", ofType: "sks")
//        let particle = NSKeyedUnarchiver.unarchiveObject(withFile: path!) as! SKEmitterNode
//        particle.name = "MyParticle"
//        particle.position = CGPoint(x:self.view.frame.width / 2, y:self.view.frame.height / 2)
//        scene.addChild(particle)
//        skView.presentScene(scene)
//        self.view.addSubview(skView)
// MARK: - パターン4 Timer
        var timer = Timer()
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.onUpdate(timer:)), userInfo: nil, repeats: true)
        timer.fire()
        
    }
    
    @objc func onUpdate(timer : Timer){
        sampleView.frame.origin.x += 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

