//
//  CABasicAnimationExtension.swift
//  AnimationSample
//
//  Created by 水野祥子 on 2018/03/06.
//  Copyright © 2018年 sachiko. All rights reserved.
//

import UIKit

//参考　https://github.com/iamir4g/SOS-ECF/blob/3337c3b666094f285ee5b9dbfdfcd141f22981d6/Pods/Motion/Sources/MotionCAAnimation.swift
public enum MotionAnimationKeyPath: String {
    case backgroundColor
    case borderColor
    case borderWidth
    case cornerRadius
    case transform
    case rotate  = "transform.rotation"
    case rotateX = "transform.rotation.x"
    case rotateY = "transform.rotation.y"
    case rotateZ = "transform.rotation.z"
    case scale  = "transform.scale"
    case scaleX = "transform.scale.x"
    case scaleY = "transform.scale.y"
    case scaleZ = "transform.scale.z"
    case translation  = "transform.translation"
    case translationX = "transform.translation.x"
    case translationY = "transform.translation.y"
    case translationZ = "transform.translation.z"
    case position
    case opacity
    case zPosition
    case width = "bounds.size.width"
    case height = "bounds.size.height"
    case size = "bounds.size"
    case shadowPath
    case shadowColor
    case shadowOffset
    case shadowOpacity
    case shadowRadius
}

extension CABasicAnimation {
    
    public convenience init(keyPath: MotionAnimationKeyPath) {
        self.init(keyPath: keyPath.rawValue)
    }
}
