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
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    let color = UIColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Label
        redColorLabel.text = String(redSlider.value)
        greenColorLabel.text = String(greenSlider.value)
        blueColorLabel.text = String(blueSlider.value)
        
        //Slider
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        

    }

    @IBAction func redSliderAction() {
        redColorLabel.text = String(round(100 * redSlider.value) / 100)
        colorView.backgroundColor = UIColor.init(red: CGFloat(redSlider.value),
                                                 green: CGFloat(greenSlider.value),
                                                 blue: CGFloat(blueSlider.value),
                                                 alpha: 1.0)
    }
    
    @IBAction func greenSliderAction() {
        greenColorLabel.text = String(round(100 * greenSlider.value) / 100)
        colorView.backgroundColor = UIColor.init(red: CGFloat(redSlider.value),
                                                 green: CGFloat(greenSlider.value),
                                                 blue:CGFloat(blueSlider.value),
                                                 alpha: 1.0)
    }
    
    @IBAction func blueSliderAction() {
        blueColorLabel.text = String(round(100 * blueSlider.value) / 100)
        colorView.backgroundColor = UIColor.init(red: CGFloat(redSlider.value),
                                                 green: CGFloat(greenSlider.value),
                                                 blue:CGFloat(blueSlider.value),
                                                 alpha: 1.0)
    }
}


