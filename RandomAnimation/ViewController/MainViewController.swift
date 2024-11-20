//
//  ViewController.swift
//  RandomAnimation
//
//  Created by Artem H on 11/19/24.
//

import UIKit
import SpringAnimation

final class MainViewController: UIViewController {
    
    @IBOutlet var presentLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var springAnimationView: SpringView!
    
    let animation = Animation.getAnimation()
    var nextAnimation = Animation.getAnimation()
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViewAnimation(
            with: animation.type,
            curve: animation.curve,
            force: animation.force,
            duration: animation.duration,
            delay: animation.delay
        )
    }
    
    private func setViewAnimation(
        with animationType: String,
        curve: String,
        force: Double,
        duration: Double,
        delay: Double
    ) {
        springAnimationView.animation = animationType
        springAnimationView.curve = curve
        springAnimationView.force = force
        springAnimationView.duration = duration
        springAnimationView.delay = delay
        
        presentLabel.text = "present: \(animationType)"
        curveLabel.text = "curve: \(curve)"
        forceLabel.text = "force: \(force)"
        durationLabel.text = "duration: \(duration)"
        delayLabel.text = "delay: \(delay)"
    }
    
    
    @IBAction func runAnimationButton(_ sender: UIButton) {
        
        springAnimationView.transform = .identity
        
        if counter == 0 {
            springAnimationView.animate()
            sender.setTitle("Run \(nextAnimation.type)", for: .normal)
        } else {
            setViewAnimation(
                    with: nextAnimation.type,
                    curve: nextAnimation.curve,
                    force: nextAnimation.force,
                    duration: nextAnimation.duration,
                    delay: nextAnimation.delay
                )
            
            springAnimationView.animate()
            nextAnimation = Animation.getAnimation()
            sender.setTitle("Run \(nextAnimation.type)", for: .normal)
        }
        counter += 1
    }
    
    
}

