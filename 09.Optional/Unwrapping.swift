/**
 언래핑(Unwrapping)
 */

// if-let 바인딩
var nilAvailable : Int? = 99

if let val = nilAvailable {
    print("nilAvailable은 유효한 값 : \(val)") // val은 non-optional
}

// if-let 바인딩 : 멀티

// nil 반환 가능한 함수
func someNumber() -> Int? {
//    return nil
    return 1
}

// 딕셔너리 - nil 반환 가능
let numbers = ["one":1, "two":2]

if let num1 = someNumber(), let num2 = numbers["two"] {
   print("num1, num2 값 :", num1, num2)
}


// 강제 언래핑 - non optional 타입
let two: Int = numbers["two"]!
print("Forced Unwrapping. two:", two)

// 강제 언래핑 - 언래핑 실패시 에러
//let three = numbers["three"]!


