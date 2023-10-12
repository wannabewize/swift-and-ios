//
//  ViewController.swift
//  ColorSliderQuiz
//
//  Created by Jaehoon Lee on 2021/07/01.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        
    @IBAction func sliderChanged(_ sender: Any) {
        // 슬라이더 1개가 변경되는 이벤트
        showColor()
    }
    
    func showColor() {
        // 모든 슬라이더의 값을 읽어서 색상 반영
        let red = CGFloat(redSlider.value / 255 )
        let green = CGFloat(greenSlider.value / 255 )
        let blue = CGFloat(blueSlider.value / 255)
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
