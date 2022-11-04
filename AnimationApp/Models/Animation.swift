//
//  Model.swift
//  AnimationApp
//
//  Created by leogoba on 01.11.2022.
//

import Foundation

struct Animation {
    
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(name)
        curve: \(curve)
        force: \(String(format: "%.2f", force))
        duration: \(String(format: "%.2f", duration))
        delay: \(String(format: "%.2f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            name: DataStore.shared.animationsNames.randomElement() ?? "",
            curve: DataStore.shared.curvesNames.randomElement() ?? "",
            force: Double.random(in: 1...1.5),
            duration: Double.random(in: 0.8...1.6),
            delay: 0.3
        )
    }
}
