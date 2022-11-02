//
//  Model.swift
//  AnimationApp
//
//  Created by leogoba on 01.11.2022.
//

import Foundation
import SpringAnimation

struct Animation {
    
    let animationName: String
    let curveName: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimation() -> Animation {
        let animationDS = DataStore.shared
        
        let animation = Animation(
            animationName: animationDS.animationsNames.randomElement() ?? "",
            curveName: animationDS.curvesNames.randomElement() ?? "",
            force: Double.random(in: 0.5...2.5),
            duration: Double.random(in: 0.5...1.5),
            delay: Double.random(in: 0.3...0.8)
        )
        return animation
    }
}
