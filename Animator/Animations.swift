//
//  Animations.swift
//  Animator
//
//  Created by Aleksandr Aniskin on 22.12.2021.
//

import Foundation
import UIKit

protocol Animator{
    associatedtype Target
    associatedtype Value
    
    init(_ value: Value)
    
    func animate(_ target: Target)
}

infix operator ~>
func ~><T: Animator>(left: T, right: T.Target){
    left.animate(right)
}

class BackColorAnimator: Animator{
    let newValue: UIColor
    
    required init(_ value: UIColor) {
        newValue = value
    }
    
    func animate(_ target: UIView) {
        UIView.animate(withDuration: 0.3){
            target.backgroundColor = self.newValue
        }
    }
}

class ChangeCenterAnimator: Animator{
    let newValue: CGPoint
    
    required init(_ value: CGPoint) {
        newValue = value
    }
    
    func animate(_ target: UIView) {
        UIView.animate(withDuration: 0.3){
            target.center = self.newValue
        }
    }
}

class ScaleTranceAnimator: Animator{
    let newValue: CGAffineTransform
    
    required init(_ value: CGAffineTransform) {
        newValue = value
    }
    
    func animate(_ target: UIView) {
        UIView.animate(withDuration: 0.3){
            target.transform = self.newValue
        }
    }
}



