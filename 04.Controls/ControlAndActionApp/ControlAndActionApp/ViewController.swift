//
//  ViewController.swift
//  ControlAndActionApp
//
//  Created by Jaehoon Lee on 2021/07/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var stepper: UIStepper!
    @IBAction func handleButtonClick(_ sender: Any) {
        print("버튼 클릭")
    }
    
    @IBAction func handleSwitchChange(_ sender: Any) {
        print("mySwitch 상태 변경", mySwitch.isOn ? "ON" : "OFF")
    }
    
    @IBAction func handleStepperChanged(_ sender: Any) {
        print("Stepper 상태 변경 :", stepper.value)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

