/*
 * Optional, nil 예제
 */

// Error : 일반 타입(non-optional)에는 nil 대입 불가
// var i : Int = nil

// Optional Type 선언
var nonExistVal : Int? = nil
print("nil 대입된 변수 : ",nonExistVal)


// 옵셔널 타입의 변수 대입
var optionalVal: Int? = 100

// Unwrapping : 옵셔널 변수(상수)의 값 얻기
// Int? -> Int

// 강제 언래핑(forced unwrapping) - 위험.
let forcedUnwrappedVal: Int = optionalVal!
// 강제 언래핑은 - nil 일때 위험 - crash
//let forcedUnwrappedVal2 = nonExistVal!

// 안전한 Unwrapping : Optional binding
if let unwrappedVal1 = optionalVal {
    print("언래핑된 값 : ", unwrappedVal1)
}

if let unwrappedVal2 = nonExistVal {
    print("존재하지 않는 값")
}
else {
    print("nil을 unwrapping하지 않음.")
}
