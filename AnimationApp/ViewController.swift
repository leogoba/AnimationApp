//
//  ViewController.swift
//  AnimationApp
//
//  Created by leogoba on 01.11.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    var animation = Animation.getAnimation()
    
    @IBOutlet var springView: SpringView!
    @IBOutlet var springButtonLabel: SpringButton!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabels()
        
        springView.layer.cornerRadius = 15
        springButtonLabel.layer.cornerRadius = 15
    }
    
    @IBAction func springButton() {
        getRandomValuesAndAnimation()
        springView.animate()
        updateLabels()
        
        animation = Animation.getAnimation()
        
        springButtonLabel.setTitle("Run " + animation.animationName, for: .normal)
    }
    
    private func getRandomValuesAndAnimation() {
        springView.force = animation.force
        springView.duration = animation.duration
        springView.delay = animation.delay
        springView.animation = animation.animationName
        springView.curve = animation.curveName
    }
    
    private func updateLabels() {
        presetLabel.text = "preset: \(animation.animationName)"
        curveLabel.text = "curve: \(animation.curveName)"
        forceLabel.text = "force: \(String(format: "%.2f", animation.force))"
        durationLabel.text = "duration: \(String(format: "%.2f", animation.duration))"
        delayLabel.text = "delay: \(String(format: "%.2f", animation.delay))"
    }
}

