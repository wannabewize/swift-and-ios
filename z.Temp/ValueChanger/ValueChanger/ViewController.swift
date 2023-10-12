//
//  ViewController.swift
//  ValueChanger
//
//  Created by Jaehoon Lee on 2021/07/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var valueLabel: UILabel!
    
    
    // 스테퍼 변경
    @IBAction func onStepperChanged(_ sender: Any) {
        // 값이 변경되면 화면에 반영
        showValue()
        
        // 슬라이더에 값 반영
        slider.value = Float(stepper.value)
    }
    
    @IBAction func onDownClicked(_ sender: Any) {
        if stepper.value > stepper.minimumValue {
            stepper.value -= 1
            
            // 값이 변경되면 화면에 반영
            showValue()
            // 스테퍼와 슬라이더 값 맞추기
            syncSlider()
        }
    }
    
    @IBAction func onUpClicked(_ sender: Any) {
        if stepper.value < stepper.maximumValue {
            stepper.value += 1
            
            // 값이 변경되면 화면에 반영
            showValue()
            // 스테퍼와 슬라이더 값 맞추기
            syncSlider()
        }
    }
    
    // 스테퍼의 값을 메인으로 사용. 스테퍼의 값을 화면에 출력
    func showValue() {
        // 정수형으로 출력
        valueLabel.text = "\(Int(stepper.value))"
    }
    
    func syncSlider() {
        // 슬라이더의 값을 스테퍼의 값에 맞추기
        slider.value = Float(stepper.value)
    }
    
    @IBAction func onSliderChanged(_ sender: Any) {
        // sender는 이벤트 발생지
        let slider = sender as! UISlider
        
        // 슬라이더의 값이 변경되면 - 스테퍼에 값 맞추기
        stepper.value = Double(slider.value)
        
        // 값이 변경되면 화면에 반영
        showValue()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 초기값과 범위 설정
        stepper.minimumValue = 0
        stepper.maximumValue = 10
        slider.minimumValue = 0
        slider.maximumValue = 10

        // 값 증감 단위
        stepper.stepValue = 1
        // 초기값
        stepper.value = 5
        
        
        // 현재값 출력
        showValue()
        syncSlider()
    }


}

