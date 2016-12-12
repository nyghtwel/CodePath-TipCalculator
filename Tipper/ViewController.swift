//
//  ViewController.swift
//  Tipper
//
//  Created by Alan Liou on 12/11/16.
//  Copyright © 2016 Alan Liou. All rights reserved.
//

import UIKit
import SceneKit
import SpriteKit

class ViewController: UIViewController {

    @IBOutlet weak var tipPercentLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipSlider: UISlider!
   
    
    
    var currentValue:Int! = 5
    override func viewDidLoad() {
        super.viewDidLoad()
        billField.becomeFirstResponder()
      

    }

   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        print("tap working")

        let touchLocation: CGPoint = sender.location(in: sender.view)
        
        
        print(touchLocation)
        
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        let percent = Double(currentValue)
        
        let tip = bill * percent / 100
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        currentValue! = Int(sender.value)
        tipPercentLabel.text = "\(currentValue!)"+"%"
        self.calculateTip(UITextField())
    }

}

