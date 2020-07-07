//
//  ViewController.swift
//  Debugging
//
//  Created by Zihad on 13/03/2020.
//  Copyright © 2020 MatrixTeam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        print(1,2,3,4,5, separator: "-")
//        print(1,2,3,4,5, terminator: "-")
//        assert(1 == 1, "Maths failure!")
//        assert(1 == 2, "Maths failure!")
        for i in 1 ... 100 {
            print("Got number \(i)")
        }


    }
}

