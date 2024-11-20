//
//  Animation.swift
//  RandomAnimation
//
//  Created by Artem H on 11/19/24.
//

struct Animation {
    
    let type: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimation() -> Animation {
        let source = Source()
        
        return Animation(
            type: source.randomAnimation?.rawValue ?? "pop",
            curve: source.randomCurve?.rawValue ?? "easeIn",
            force: (Double.random(in: 0.5...2.00)*100).rounded()/100,
            duration: (Double.random(in: 0.5...2.00)*100).rounded()/100,
            delay: (Double.random(in: 0.1...0.5)*100).rounded()/100
        )
    }
    
}
