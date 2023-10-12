//
//  ContentView.swift
//  ControlAndAction_SwiftUI
//
//  Created by Jaehoon Lee on 10/12/23.
//

import SwiftUI

struct ContentView: View {
    @State var stepperValue: Int = 0
    @State var toggleValue: Bool = true
    @State var sliderValue: Double = 0
    
    @State var isAlertVisible: Bool = false
    @State var isActionSheetVisible: Bool = false
    @State var selectedDate: Date = Date()
    
    @State var textInput: String = ""

    var body: some View {
        VStack(spacing: 20.0) {
            
            HStack {
                // Button
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    print("버튼 클릭")
                }
                
                // Button statement
                Button("Disabled") {
                    print("disabled button clicked!")
                }
                .disabled(true) // 고정된 상수
            }
            
            // 상태값(State)을 이용한 값 변경
            Stepper {
                Text("스테퍼의 값 : \(stepperValue)")
            } onIncrement: {
                print("increment")
                stepperValue += 1
            } onDecrement: {
                print("decrement")
                stepperValue -= 1
            } onEditingChanged: { done in
                print("editing changed :", done)
            }
            
            // 상태값(State) 바인딩 Binding<Bool>을 이용해서 값과 컨트롤 바인딩
            Toggle(isOn: $toggleValue) {
                Text("스위치(Toggle) value : \(toggleValue ? "true" : "false")")
            }
            
            HStack {
                Slider(value: $sliderValue, in: 0.0...10.0, step: 1) {
                    Text("slider")
                } minimumValueLabel: {
                    Text("0")
                } maximumValueLabel: {
                    Text("10")
                }

                Text("슬라이더 값 : \(Int(sliderValue))")
            }
            
            HStack(spacing: 20) {
                Button("Alert") {
                    isAlertVisible.toggle()
                }
                Button("ActionSheet") {
                    isActionSheetVisible.toggle()
                }

            }
            .alert("Alert", isPresented: $isAlertVisible) {
                Button("OK") {
                    print("Alert - OK")
                }
                
                Button("Cancel", role: .cancel) {
                    print("Alert - Cancel")
                }
            } message: {
                Text("Alert Message")
            }
            .confirmationDialog("ActionSheet", isPresented: $isActionSheetVisible) {
                Button("Cancel", role: .cancel) {
                    print("ActionSheet Cancel")
                }
                Button("선택1") {
                    print("ActionSheet 선택1")
                }
                Button("선택2") {
                    print("ActionSheet 선택2")
                }
                Button("삭제", role: .destructive) {
                    print("ActionSheet 삭제")
                }

            } message: {
                Text("Action Sheet Message")
            }
            
            VStack(spacing: 8) {
                // 엔터키로 자동 편집 종료
                TextField("텍스트 입력", text: $textInput)
                Text("입력된 내용 : \(textInput)")
            }
            
            DatePicker("Date Picker", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
