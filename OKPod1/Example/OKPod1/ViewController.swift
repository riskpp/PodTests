//
//  ViewController.swift
//  OKPod1
//
//  Created by riskpp on 05/04/2021.
//  Copyright (c) 2021 riskpp. All rights reserved.
//

import UIKit
import OKPod1

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let instance = SwiftTestClass()
        imageView.image = instance.imageFromBundle()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

