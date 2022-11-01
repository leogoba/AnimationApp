//
//  Model.swift
//  AnimationApp
//
//  Created by leogoba on 01.11.2022.
//

import Foundation
import SpringAnimation

struct Animationnnn {
//    let animation: String
//    let curve: String
    
    func getAnimation() -> String {
        DataStore.shared.animationsNames.randomElement() ?? ""
    }
    
    func getCurve() -> String {
        DataStore.shared.curvesNames.randomElement() ?? ""
    }
}
