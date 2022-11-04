//
//  ViewController.swift
//  AnimationApp
//
//  Created by leogoba on 01.11.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet var springView: SpringView!
    @IBOutlet var springButtonLabel: UIButton!
    @IBOutlet var animationLabel: UILabel! {
        didSet {
            animationLabel.text = animation.description
        }
    }
    
    //MARK: - Private Properties
    private var animation = Animation.getRandomAnimation()
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        springView.layer.cornerRadius = 15
        springButtonLabel.layer.cornerRadius = 15
    }
    
    //MARK: - IB Actions
    @IBAction func springButton() {
        animationLabel.text = animation.description
        getRandomValuesAndAnimation()
        springView.animate()
        animation = Animation.getRandomAnimation()
        springButtonLabel.setTitle("Run " + animation.name, for: .normal)
    }
    
    //MARK: - Private Methods
    private func getRandomValuesAndAnimation() {
        springView.force = animation.force
        springView.duration = animation.duration
        springView.delay = animation.delay
        springView.animation = animation.name
        springView.curve = animation.curve
    }
}

