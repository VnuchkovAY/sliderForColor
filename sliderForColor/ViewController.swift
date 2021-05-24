//
//  ViewController.swift
//  sliderForColor
//
//  Created by Внучков Саша on 24.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSliderValue2: UISlider!
    @IBOutlet weak var greenSliderValue2: UISlider!
    @IBOutlet weak var blueSliderValue2: UISlider!
    
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    
    @IBOutlet weak var paintView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        paintView.layer.cornerRadius = 15
        changeColor()
        
    }

    @IBAction func sliderAction() {
        
        changeColor()
    }

    private func changeColor() {
        paintView.backgroundColor = UIColor(
            red: CGFloat(redSliderValue2.value),
            green: CGFloat(greenSliderValue2.value),
            blue: CGFloat(blueSliderValue2.value),
            alpha: 1
        )
        
        defaultValue(slider: redSliderValue2, value: redValue)
        defaultValue(slider: greenSliderValue2, value: greenValue)
        defaultValue(slider: blueSliderValue2, value: blueValue)
        
    }

    private func defaultValue(slider: UISlider, value: UILabel) {
        value.text = String(round(100 * slider.value)/100)
        
    }
   
}

