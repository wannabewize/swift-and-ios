//
//  ViewController.swift
//  ControlAndActionApp
//
//  Created by Jaehoon Lee on 2021/07/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var labelForSlider: UILabel!
    @IBOutlet weak var labelForStepper: UILabel!
    @IBOutlet weak var buttonStack: UIStackView!
    @IBOutlet weak var labelForSwitch: UILabel!
    @IBOutlet weak var stateButton: UIButton!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textInput: UILabel!
    
    // Button and Action
    @IBAction func handleButtonClick(_ sender: Any) {
        print("버튼 클릭")
    }
    
    // Button and Button state
    
    @IBAction func handleSwitchChange(_ sender: Any) {
        labelForSwitch.text = "스위치의 값 : \(mySwitch.isOn)"
    }
    
    @IBAction func handleStepperChanged(_ sender: Any) {
        print("Stepper 상태 변경 :", stepper.value)
        labelForStepper.text = "스테퍼의 값 : \(stepper.value)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 전통적인 방법 : Target-Action(Selector). 시스템 버튼
        let button1 = UIButton.systemButton(with: UIImage(systemName: "pencil")!, target: self, action: #selector(handlePencilButtonClick))
        buttonStack.addArrangedSubview(button1)
        
        // 전통적인 방법 : Target-Action(Selector)
        let button2 = UIButton(type: UIButton.ButtonType.system)
        button2.setTitle("Button2", for: UIControl.State.normal)
        button2.addTarget(self, action: #selector(handleButtonClick), for: .touchUpInside)
        buttonStack.addArrangedSubview(button2)
        
        // iOS 15 이상
        var config = UIButton.Configuration.bordered()
        config.title = "Button3"
        config.buttonSize = .medium
        let button3 = UIButton(
            configuration: config,
            primaryAction: UIAction(handler: { action in
            print("버튼3 클릭")
        }))
        buttonStack.addArrangedSubview(button3)
        
        slider.minimumValue = 0
        slider.maximumValue = 10
    }
    
    // 버튼에서의 이벤트 핸들러 함수의 파라미터는 Button 객체 ( 이벤트를 발생시킨 객체 )
    @objc func handlePencilButtonClick(sender: Any) {
        print("pencil button clicked")
    }
    
    // valueChange 이벤트
    @IBAction func handleSliderValueChanged(_ sender: Any) {
        guard let slider = sender as? UISlider else {
            fatalError("!!!")
        }
        
        labelForSlider.text = "슬라이더의 값 : \(Int(slider.value))"
    }
    
    @IBAction func showAlert(_ sender: Any) {
        let dialog = UIAlertController(title: "Alert", message: "Alert Message", preferredStyle: .alert)
        dialog.addAction(UIAlertAction(title: "확인", style: .default, handler: { _ in
            print("확인 누름")
        }))
        dialog.addAction(UIAlertAction(title: "취소", style: .cancel, handler: { _ in
            print("취소 누름")
        }))
        self.show(dialog, sender: nil)
    }
    
    @IBAction func showActionSheet(_ sender: Any) {
        let dialog = UIAlertController(title: "Action Sheet", message: "Action Sheet Message", preferredStyle: .actionSheet)
        dialog.addAction(UIAlertAction(title: "삭제", style: .destructive, handler: { _ in
            print("삭제")
        }))
        dialog.addAction(UIAlertAction(title: "선택1", style: .default, handler: { _ in
            print("선택1")
        }))
        dialog.addAction(UIAlertAction(title: "선택2", style: .default, handler: { _ in
            print("선택2")
        }))
        dialog.addAction(UIAlertAction(title: "취소", style: .cancel, handler: { _ in
            print("취소")
        }))
        self.show(dialog, sender: nil)
    }
    // editingChanged 이벤트
    @IBAction func onEditingChanged(_ sender: Any) {
        textInput.text = "입력된 내용 : \(textField.text!)"
    }
    // didEndOnExit 이벤트 - 엔터키로 편집 종료. 키보드 감추기
    @IBAction func onDidEndOnExit(_ sender: Any) {
    }
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        // normal, disabled 상태에 해당하는 버튼 제목 설정.
        stateButton.setTitle("사용 가능", for: .normal)
        stateButton.setTitle("사용 불가 버튼", for: .disabled)
        // 버튼의 상태를 disabled로 변경 -> disabled 상태 적용
        stateButton.isEnabled = false
        
        labelForSwitch.text = "스위치의 값 : \(mySwitch.isOn)"
    }
}
