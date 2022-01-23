//
//  ViewController.swift
//  Animator
//
//  Created by Aleksandr Aniskin on 22.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BackColorAnimator(UIColor.red) ~> testView
        ChangeCenterAnimator(CGPoint(x: 160, y: 220)) ~> testView
        ScaleTranceAnimator(CGAffineTransform(scaleX: 2, y: 2)) ~> testView
    }


}

