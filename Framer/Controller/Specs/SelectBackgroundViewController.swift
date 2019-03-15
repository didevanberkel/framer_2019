//
//  SelectBackgroundViewController.swift
//  Framer
//
//  Created by Dide van Berkel on 20/01/2019.
//  Copyright © 2019 Dide van Berkel. All rights reserved.
//

import UIKit

class SelectBackgroundViewController: UIViewController {

    @IBOutlet weak var gradientSwitch: UISwitch!
    @IBOutlet weak var colorSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redTextField: UITextField!
    
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var greenTextField: UITextField!
    
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueTextField: UITextField!
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var saveButton: GeneralButton!
   
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var vcTitle: UILabel!
    
    @IBOutlet weak var hextTextField: UITextField!
    
    var callback: (([UIColor])->())?
    
    var firstColor: UIColor = .red
    var secondColor: UIColor = .purple
    
    override func viewDidLoad() {
        super.viewDidLoad()

        saveButton.typeOfButton = .framerBlue
        saveButton.isEnabled = true
        saveButton.setTitle("button_save".localized, for: .normal)
        
        vcTitle.setVCTitle(title: "navbar_background".localized)
        
        redTextField.delegate = self
        redTextField.addTarget(self, action: #selector(redTextFieldDidChange(_:)), for: .editingChanged)
        greenTextField.delegate = self
        greenTextField.addTarget(self, action: #selector(greenTextFieldDidChange(_:)), for: .editingChanged)
        blueTextField.delegate = self
        blueTextField.addTarget(self, action: #selector(blueTextFieldDidChange(_:)), for: .editingChanged)
        
        redSlider.value = Float(firstColor.rgb().red)
        greenSlider.value = Float(firstColor.rgb().green)
        blueSlider.value = Float(firstColor.rgb().blue)
        
        setupSliderValues()
        setupGradientValues()
        changeColors()
    }
    
    @IBAction func closeButtonPressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        
        if gradientSwitch.isOn {
            callback?([firstColor, secondColor])
        } else {
            callback?([UIColor.red, UIColor.green])
        }
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func gradientSwitchValueChanged(_ sender: Any) {
        
        setupGradientValues()
        changeColors()
    }
    
    @IBAction func redSliderValueChanged(_ sender: UISlider) {
        
        redTextField.text = String(Int(redSlider.value))
        changeColors()
    }
    
    @IBAction func greenSliderValueChanged(_ sender: UISlider) {
        
        greenTextField.text = String(Int(greenSlider.value))
        changeColors()
    }

    @IBAction func blueSliderValueChanged(_ sender: UISlider) {
        
        blueTextField.text = String(Int(blueSlider.value))
        changeColors()
    }
    
    private func setupSliderValues() {
        
        redTextField.text = String(Int(redSlider.value))
        greenTextField.text = String(Int(greenSlider.value))
        blueTextField.text = String(Int(blueSlider.value))
    }
    
    private func setupGradientValues() {
        
        if gradientSwitch.isOn {
            // Gradient on, set two colors
            colorSegmentedControl.isHidden = false
        } else {
            // No gradient.
            colorSegmentedControl.isHidden = true
        }
    }
    
    private func changeColors() {
        
        if colorSegmentedControl.selectedSegmentIndex == 0 {
            // First color
            redSlider.value = Float(firstColor.rgb().red)
            greenSlider.value = Float(firstColor.rgb().green)
            blueSlider.value = Float(firstColor.rgb().blue)
        } else {
            // Second color
            redSlider.value = Float(secondColor.rgb().red)
            greenSlider.value = Float(secondColor.rgb().green)
            blueSlider.value = Float(secondColor.rgb().blue)
        }
        
        if gradientSwitch.isOn {
            if colorSegmentedControl.selectedSegmentIndex == 0 {
                firstColor = UIColor(red: redSlider.value.colorValue(), green: greenSlider.value.colorValue(), blue: blueSlider.value.colorValue(), alpha: 1.0)
            } else {
                secondColor = UIColor(red: redSlider.value.colorValue(), green: greenSlider.value.colorValue(), blue: blueSlider.value.colorValue(), alpha: 1.0)
            }
            colorView.applyGradient(colors: [firstColor, secondColor])
        } else {
            firstColor = UIColor(red: redSlider.value.colorValue(), green: greenSlider.value.colorValue(), blue: blueSlider.value.colorValue(), alpha: 1.0)
            colorView.backgroundColor = firstColor
        }
    }
    
    @IBAction func segmentedControlChanged(_ sender: UISegmentedControl) {
        
        changeColors()
    }
    
}

extension SelectBackgroundViewController: UITextFieldDelegate {
    
    @objc func redTextFieldDidChange(_ textField: UITextField) {
        
        let currentValue: Float = Float(textField.text ?? "0") ?? 0
        redSlider.setValue(currentValue, animated: true)
        changeColors()
    }
    
    @objc func greenTextFieldDidChange(_ textField: UITextField) {
        
        let currentValue: Float = Float(textField.text ?? "0") ?? 0
        greenSlider.setValue(currentValue, animated: true)
        changeColors()
    }
    
    @objc func blueTextFieldDidChange(_ textField: UITextField) {
        
        let currentValue: Float = Float(textField.text ?? "0") ?? 0
        blueSlider.setValue(currentValue, animated: true)
        changeColors()
    }
}
