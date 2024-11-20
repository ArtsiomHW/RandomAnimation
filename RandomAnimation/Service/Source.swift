//
//  Source.swift
//  RandomAnimation
//
//  Created by Artem H on 11/19/24.
//

import Foundation
import SpringAnimation

final class Source {
    
    let randomAnimation = AnimationPreset.allCases.randomElement()
    let randomCurve = AnimationCurve.allCases.randomElement()
    
}
