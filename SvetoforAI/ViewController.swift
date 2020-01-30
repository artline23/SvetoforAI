//
//  ViewController.swift
//  SvetoforAI
//
//  Created by Артем Ивакин on 29.01.2020.
//  Copyright © 2020 artline17@icloud.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redSignal: UIView!
    @IBOutlet var yellowSignal: UIView!
    @IBOutlet var greenSignal: UIView!
    
    @IBOutlet var startSignal: UIButton!
    
    var state = 0
    
     
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSignal.layer.cornerRadius = 75
        yellowSignal.layer.cornerRadius = 75
        greenSignal.layer.cornerRadius = 75
        
        startSignal.layer.cornerRadius = 15
        
        redSignal.alpha = 0.3
        yellowSignal.alpha = 0.3
        greenSignal.alpha = 0.3
        
      
        
    }
    
    @IBAction func changeColor(_ sender: UIButton) {
        startSignal.setTitle("NEXT", for: .normal)
        
        switch state {
        case 0:
            redSignal.alpha = 1
            yellowSignal.alpha = 0.3
            greenSignal.alpha = 0.3
            state += 1
        case 1:
            redSignal.alpha = 0.3
            yellowSignal.alpha = 1
            greenSignal.alpha = 0.3
            state += 1
        default:
            redSignal.alpha = 0.3
            yellowSignal.alpha = 0.3
            greenSignal.alpha = 1
            state = 0
        }
        
        
}
}
