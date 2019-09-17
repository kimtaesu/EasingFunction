//
//  EasingCell.swift
//  EasingFunction
//
//  Created by tskim on 19/08/2019.
//  Copyright © 2019 hucet. All rights reserved.
//

import UIKit
import EasingFunction

class EasingCell: UITableViewCell, NibForName {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var context: UIView!

    var animator: UIViewPropertyAnimator?
    func go(_ item: EasingFunction) {
        if animator?.isRunning == true {
           animator?.stopAnimation(true)
        }
        
        animator?.addAnimations {
            self.context.transform = CGAffineTransform(translationX: self.contentView.frame.width - (self.context.frame.width + 20), y: 0)
        }
        
        self.animator?.addCompletion { _ in
            DispatchQueue.main.async {
                self.animator?.addAnimations {
                    self.context.transform = .identity
                }
                self.animator?.startAnimation()
            }
        }
        animator?.startAnimation()
    }
    
    func configCell(_ item: EasingFunction) {
        
        name.text = item.description
        animator = UIViewPropertyAnimator(duration: 1.0, timingParameters: item.asUICubicTimingParameters())
        
    }

    override func prepareForReuse() {
        animator?.pauseAnimation()
        animator?.stopAnimation(false)
        animator?.finishAnimation(at: .start)
        animator = nil
    }
}
