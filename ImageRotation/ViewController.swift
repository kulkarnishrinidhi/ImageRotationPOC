//
//  ViewController.swift
//  ImageRotation
//
//  Created by Kulkarni on 15/08/17.
//  Copyright © 2017 Shrilakshmi Kulkarni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var counter:Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func rotateAction(_ sender: Any) {
        self.counter = self.counter + 1
        UIView.animate(withDuration: 2.0, animations: {
            self.imageView.transform = CGAffineTransform(rotationAngle: (10.0 * CGFloat(self.counter) * CGFloat(Double.pi)) / 180.0)
        })
    }

}

