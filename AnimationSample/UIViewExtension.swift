//
//  UIViewExtension.swift
//  AnimationSample
//
//  Created by 水野祥子 on 2018/03/06.
//  Copyright © 2018年 sachiko. All rights reserved.
//

import UIKit

extension UIView{
    //基本
    func boundAnimation(Repeat:Bool = false, ToRepeatTime:Float = 1, EndStop:Bool = true, Speed:Float){
        let animation = CASpringAnimation(keyPath: "transform.scale")
        animation.delegate = self
        animation.fromValue = 0.5 //現在の大きさの何倍から
        animation.toValue = 3 //現在の大きさの何倍まで
        animation.speed = Speed //1より少ない遅くなる、　1より多い早くなる　 1がデフォルト　speedは倍率での設定。
        
        
        if(Repeat == true){
            animation.repeatCount = MAXFLOAT
            animation.autoreverses = true //逆移動のスムーズ
            animation.duration = CFTimeInterval(ToRepeatTime) //アニメーションするまでの時間
        }
        
        
        if(EndStop == true){ //repeatの状態は意味をなさない
            //以下3つでアニメーション最後の状態維持可能
            animation.isRemovedOnCompletion = false //アニメーションを削除するかしないかのflag
            animation.fillMode = kCAFillModeForwards //アクティブ期間終了時の動作
            animation.duration = 0 //アニメーションするまでの時間
        }
        
    
        self.layer.add(animation, forKey: nil)
    }
    
    //透過 optonの設定は必要な時に入れるようにする。
    func TransmissionAnimation(){
        let animation = CABasicAnimation(keyPath: "opacity")
        animation.fromValue = 0.1
        animation.toValue = 1
        animation.speed = 0.1
        animation.repeatCount = MAXFLOAT
        animation.autoreverses = true
        
        self.layer.add(animation, forKey: nil)
    }
    
    //移動sample　今回上に追加のみ optonの設定は必要な時に入れるようにする。
    func AddTopAnimation(AddY:CGFloat){
        let nowX = self.frame.origin.x
        let nowY = self.frame.origin.y
        
        let animation = CABasicAnimation(keyPath: "position")
        animation.toValue = [nowX, nowY]
        animation.fromValue = [nowX, nowY + AddY]
        animation.speed = 0.1
        animation.repeatCount = MAXFLOAT
        animation.autoreverses = true
        
        self.layer.add(animation, forKey: nil)
        
    }
    
}

extension UIView:CAAnimationDelegate{
    
    public func animationDidStart(_ anim: CAAnimation){
        print("アニメーション開始")
    }
    
    
    public func animationDidStop(_ anim: CAAnimation, finished flag: Bool){
        print("アニメーション終了")
    }
}
