//
//  ViewController.swift
//  AnimationApp
//
//  Created by leogoba on 01.11.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    let qwerty = Animationnnn()

    @IBOutlet var animView: SpringView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        qwe()
    }
    
    func qwe() {
        animView.autostart = true
        animView.animation = qwerty.getAnimation()
        animView.curve = qwerty.getCurve()
        
    }


}

