//
//  ViewController.swift
//  Animation
//
//  Created by Zihad on 11/03/2020.
//  Copyright © 2020 MatrixTeam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var imageView: UIImageView!
    var currentAnimation = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK:- Create image view
        imageView = UIImageView(image: UIImage(named: "penguin"))
        imageView.center = CGPoint(x: 512, y: 384)
        view.addSubview(imageView)
    }
    @IBAction func tapped(_ sender: UIButton) {
        sender.isHidden = true
        UIView.animate(withDuration: 1, delay: 0, options: [],
           animations: {
            switch self.currentAnimation {
            case 0:
                self.imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
                print(self.currentAnimation)
            case 1:
            self.imageView.transform = .identity
                print(self.currentAnimation)
            case 2:
                self.imageView.transform = CGAffineTransform(translationX: 256, y: -256)
                print(self.currentAnimation)
            case 3:
                self.imageView.transform = .identity
                print(self.currentAnimation)
            case 4:
                self.imageView.transform = CGAffineTransform(translationX: 256, y: 256)
                print(self.currentAnimation)
            case 5:
                self.imageView.transform = .identity
                print(self.currentAnimation)
            case 6:
                self.imageView.transform = CGAffineTransform(translationX: -256, y: 256)
                print(self.currentAnimation)
            case 7:
                self.imageView.transform = .identity
                print(self.currentAnimation)
            case 8:
                self.imageView.transform = CGAffineTransform(translationX: -256, y: -256)
                print(self.currentAnimation)
            case 9:
                self.imageView.transform = .identity
                print(self.currentAnimation)
            case 10:
                self.imageView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            case 11:
                self.imageView.transform = .identity
            case 12:
                self.imageView.alpha = 0.1
                self.imageView.backgroundColor = UIColor.green

            case 13:
                self.imageView.alpha = 1
                self.imageView.backgroundColor = UIColor.clear

            default:
                break
               // print(self.currentAnimation)
            
            }
        }) { finished in
            sender.isHidden = false
        }
        currentAnimation += 1
        if currentAnimation > 14 {
            currentAnimation = 0
        }
    }
    

}

