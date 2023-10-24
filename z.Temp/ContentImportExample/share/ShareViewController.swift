//
//  ShareViewController.swift
//  share
//
//  Created by wannabewize on 10/24/23.
//

import UIKit
import Social

class ShareViewController: UIViewController {
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var valueLabel: UILabel!
    
    @IBAction func handleCancel() {
        let value = Int(slider.value)        
        extensionContext?.completeRequest(returningItems: [value])
    }
    
    @IBAction func handleChange(_ sender: UISlider) {
        valueLabel.text = "\(Int(sender.value))"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("input items :", extensionContext?.inputItems)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        slider.minimumValue = 0
        slider.maximumValue = 100
        handleChange(slider)
    }
}
