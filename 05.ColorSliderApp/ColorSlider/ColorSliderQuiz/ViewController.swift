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
        // 슬라이더 1개가 변경되는 이벤트 - 모든 슬라이더의 값을 읽어서 색상 반영
        showColor()
    }
    
    func showColor() {
        // 슬라이더의 값을 색으로 변경
        let red = CGFloat(redSlider.value / 255 )
        let green = CGFloat(greenSlider.value / 255 )
        let blue = CGFloat(blueSlider.value / 255)
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    @IBAction func onOffChanged(_ sender: Any) {
        // 센더는 이벤트를 발생시킨 스위치. 타입 변경
        let colorSwitch = sender as! UISwitch
        if colorSwitch.isOn {
            // 스위치가 켜지면 색상을 다시 반영
            showColor()
        }
        else {
            // 스위치가 꺼지면 색상을 회색으로 변경
            colorView.backgroundColor = UIColor.gray
        }
        
        // 스위치 온/오프 상태에 맞게 슬라이더 사용 가능 설정하기
        greenSlider.isEnabled = colorSwitch.isOn
        redSlider.isEnabled = colorSwitch.isOn
        blueSlider.isEnabled = colorSwitch.isOn
    }
}
