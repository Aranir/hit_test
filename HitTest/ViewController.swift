//
//  ViewController.swift
//  HitTest
//
//  Created by roger on 31/07/14.
//  Copyright (c) 2014 Genohm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var btnTest: HitTester!
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        btnTest = HitTester()
        btnTest.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        view.addSubview(btnTest)
        
        btnTest.backgroundColor = UIColor.greenColor()
        
        let dict = ["btn":btnTest]
        
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-[btn(==50)]", options: NSLayoutFormatOptions(0), metrics: nil, views:dict))
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-[btn(==50)]", options: NSLayoutFormatOptions(0), metrics: nil, views:dict))
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

