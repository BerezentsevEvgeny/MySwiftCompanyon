//
//  Aimation.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 04.08.2021.
//

import Foundation


// Core Animation

// Make extension for element
extension UIButton {
    func pulsate() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.6
        pulse.fromValue = 0.95
        pulse.toValue = 1
        pulse.autoreverses = true
        pulse.repeatCount = 2
        pulse.initialVelocity = 0.5
        pulse.damping = 1
        
        layer.add(pulse, forKey: nil)
    }
}

////////
private var animationStarted = false

@IBAction func runCoreAnimation(_ sender: UIButton) {
    UIView.animate(
        withDuration: 0.5,
        delay: 0,
        options: [.autoreverse, .repeat]) {
        
        if !self.animationStarted {
            self.coreAnimationView.frame.origin.x -= 40
            self.animationStarted.toggle()
        }
    }
    sender.pulsate()  // use created extension
}


// Spring Animation  - Set elements to SpringClasses and animate

@IBAction func runSpringButton(_ sender: SpringButton) {
    springAnimationView.animation = "pop"
    springAnimationView.curve = "easeInOut"
    springAnimationView.force = 2
    springAnimationView.duration = 1
    springAnimationView.delay = 0.3
    
    springAnimationView.animate()
    
    sender.animation = "squeeze"
    sender.animate()
}
