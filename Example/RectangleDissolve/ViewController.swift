//
//  ViewController.swift
//  RectangleDissolveDemo
//
//  Created by m.rakhmanov on 15.02.17.
//  Copyright © 2017 m.rakhmanov. All rights reserved.
//

import UIKit
import Pods_RectangleDissolve_Example

class ViewController: UIViewController {

    var animator: RectangleDissolveAnimator!
    var shouldDismiss = false

    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let configuration = RectangleDissolveAnimatorConfiguration(rectanglesVertical: 14,
                                                                   rectanglesHorizontal: 8,
                                                                   batchSize: 20,
                                                                   fadeAnimationDuration: 0.3,
                                                                   tempo: 1000.0)
        animator = RectangleDissolveAnimator(configuration: configuration)

        if !shouldDismiss {
            //view.backgroundColor = UIColor.white
            imageView.image = UIImage(named: "psych1")
        } else {
            //view.backgroundColor = UIColor.black
            imageView.image = UIImage(named: "psych2")
        }
    }

    @IBAction func screenWasTapped(_ sender: Any) {
        if !shouldDismiss, let viewController = storyboard?.instantiateInitialViewController() as? ViewController {
            viewController.shouldDismiss = true

            viewController.transitioningDelegate = animator
            present(viewController, animated: true, completion: nil)
        } else {
            dismiss(animated: true, completion: nil)
        }
    }
    
}

