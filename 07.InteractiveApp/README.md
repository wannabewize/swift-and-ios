# Interactive App

## UIKit 

### Target-Action

전통적인 방법
- Target : 컨트롤의 이벤트를 처리하는 객체
- Action : 이벤트 처리  함수. Selector 타입
- Event : 컨트롤 이벤트. 버튼 클릭의 경우 TouchUpInside

```
button.addTarget(self, action: #selector(handleButtonClick), for: .touchUpInside)
```


### ButtonConfiguration과 UIAction

iOS15 이후

UIButton.Configuration
- title : 버튼 이름
- buttonSize : 버튼 크기


Modal Presentation 참고
https://developer.apple.com/documentation/swiftui/modal-presentations