//
//  ViewController.swift
//  sliderForColor
//
//  Created by Внучков Саша on 24.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    @IBOutlet weak var redSliderView: UISlider!
    @IBOutlet weak var greenSliderView: UISlider!
    @IBOutlet weak var blueSliderView: UISlider!
    
    @IBOutlet weak var paintView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        paintView.backgroundColor = UIColor(red: CGFloat(redSliderView.value), green: CGFloat(greenSliderView.value), blue: CGFloat(blueSliderView.value), alpha: 1)
        
    }

    @IBAction func redSliderAction() {
        redValue.text = String(round(100 * redSliderView.value)/100)
        paintView.backgroundColor = UIColor(red: CGFloat(redSliderView.value), green: CGFloat(greenSliderView.value), blue: CGFloat(blueSliderView.value), alpha: 1)
    }
    
    @IBAction func greenSliderAction() {
        greenValue.text = String(round(100 * greenSliderView.value)/100)
        paintView.backgroundColor = UIColor(red: CGFloat(redSliderView.value), green: CGFloat(greenSliderView.value), blue: CGFloat(blueSliderView.value), alpha: 1)
    }
    @IBAction func blueSliderAction(_ sender: Any) {
        blueValue.text = String(round(100 * blueSliderView.value)/100)
        paintView.backgroundColor = UIColor(red: CGFloat(redSliderView.value), green: CGFloat(greenSliderView.value), blue: CGFloat(blueSliderView.value), alpha: 1)
    }
   
}

