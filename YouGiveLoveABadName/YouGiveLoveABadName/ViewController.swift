//
//  ViewController.swift
//  YouGiveLoveABadName
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var joviHeight: NSLayoutConstraint!
  @IBOutlet var tapGesture: UITapGestureRecognizer!
  @IBOutlet weak var jovi: UIImageView!

  var imageStreched: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()


        
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {

      !imageStreched ? stretch() : normal()


  }

  func stretch() {
    UIView.animateKeyframes(withDuration: 0.5, delay: 0.0, options: [], animations: {

      UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.3) {

        self.joviHeight.constant -= 75
        self.view.layoutIfNeeded()

      }

      UIView.addKeyframe(withRelativeStartTime: 0.3, relativeDuration: 0.4) {

        self.joviHeight.constant = UIScreen.main.bounds.height + 75
        self.view.layoutIfNeeded()

      }

      UIView.addKeyframe(withRelativeStartTime: 0.7, relativeDuration: 0.4) {

        self.joviHeight.constant = UIScreen.main.bounds.height
        self.view.layoutIfNeeded()

      }
    },
                            completion: {_ in self.imageStreched = true})
  }

  func normal() {

    UIView.animateKeyframes(withDuration: 0.5, delay: 0.0, options: [], animations: {

      UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.3) {

        self.joviHeight.constant += 75
        self.view.layoutIfNeeded()

      }

      UIView.addKeyframe(withRelativeStartTime: 0.3, relativeDuration: 0.4) {

        self.joviHeight.constant = 266 - 75
        self.view.layoutIfNeeded()

      }

      UIView.addKeyframe(withRelativeStartTime: 0.7, relativeDuration: 0.4) {

        self.joviHeight.constant = 266
        self.view.layoutIfNeeded()

      }
    },
                            completion: {_ in self.imageStreched = false})
  }

}




