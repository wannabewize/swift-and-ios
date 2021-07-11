// 함수 정의
func greeting() {
   print("Hello Swift")
}

// 함수 실행
greeting()


// Bool 반환
func areYouOK() -> Bool {
   return true
}
let ok = areYouOK() // true
print("Bool 반환 함수 areYouOK 실행 :", ok)

// 문자열 반환
func favoriteDrink() -> String {
   return "Coffee"
}
let drink = favoriteDrink() // "Coffee"
print("문자열 반환 함수 favoriteDrink 실행 :", drink)

// 1줄 리턴 코드의 경우 return 생략 가능
func favoritePlace() -> String {
   "Cafe"
}
let place = favoritePlace() // "Coffee"
print("favoritePlace 실행 결과 :", place)


// 다수의 값 반환하기 - 튜플, 배열, 딕셔너리 등 사용

func random3() -> (Int, Int, Int) {
   // 난수값 생성 함수 : arc4random. Foundation 프레임워크 필요
   let r1 = (0...10).randomElement()!
   let r2 = (0...10).randomElement()!
   let r3 = (0...10).randomElement()!
   
   return (r1, r2, r3)
}

var nums = random3()
print("다수의 값 반환 함수 실행 : \(nums.0), \(nums.1), \(nums.2)")

var (num1, num2, num3) = random3()
print("다수의 값 반환 함수 실행 : \(num1), \(num2), \(num3)")
