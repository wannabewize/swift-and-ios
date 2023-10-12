//
// 기본값을 가진 파라미터
//

func greeting(person : String = "Friend") {
   print("Hello \(person)")
}

greeting(person: "Mom")
greeting() // 파라미터 생략


// Default Parameter가 2개
func exercise(what : String, who : String = "Alone", emotion : String = "Joy") {
   print("\(what) \(who) \(emotion)")
}

exercise(what: "Jog")
exercise(what: "Tennis", who: "Coach")
exercise(what: "Dance", who: "Partnet", emotion: "fun")


// Default Paramter w/o name

func drive(_ to : String = "River", _ with : String = "Friend") {
   print("Drive \(to) \(with)")
}

drive() // Drive River Friend
drive("Ocean") // Drive River Friend
drive("Mountain", "Brother") // Drive Mountain Brother


//
// Ambiguous. Default parameter로 어떤 함수가 호출될지 모르는 상태
//

func sayHello() {
   print("Hello Swift!")
}

func sayHello(person : String = "Friend") {
   print("Hello \(person)")
}


func sayHello(person : String, msg : String = "How are you") {
   print("\(msg) \(person)")
}

// 어떤 함수가 호출되는가?
sayHello()
sayHello(person: "Mom")
sayHello(person: "Friend", msg: "Good morning")
