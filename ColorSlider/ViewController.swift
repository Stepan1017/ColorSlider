//
//  ViewController.swift
//  ColorSlider
//
//  Created by Stepan Uemlianin on 23/05/2020.
//  Copyright © 2020 Stepan Uemlianin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redColorLabel: UILabel!
    @IBOutlet weak var greenColorLabel: UILabel!
    @IBOutlet weak var blueColorLabel: UILabel!
    
    @IBOutlet weak var redSliderLabel: UISlider!
    @IBOutlet weak var greenSliderLabel: UISlider!
    @IBOutlet weak var blueSliderLabel: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Label
        redColorLabel.text = String(redSliderLabel.value)
        greenColorLabel.text = String(greenSliderLabel.value)
        blueColorLabel.text = String(blueSliderLabel.value)
        

    }

    @IBAction func redSliderAction() {
        redColorLabel.text = String(round(100 * redSliderLabel.value) / 100)
    }
    
    @IBAction func greenSliderAction() {
        greenColorLabel.text = String(round(100 * greenSliderLabel.value) / 100)
    }
    
    @IBAction func blueSliderAction() {
        blueColorLabel.text = String(round(100 * blueSliderLabel.value) / 100)
    }
}

