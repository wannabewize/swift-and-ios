/*
 * Optional, nil 예제
 */

// Error
// var i : Int = nil
// Optional Type

var optionalVar : Int? = nil

print("nil 대입된 변수 : ",optionalVar)

// 타입 변환시 발생하는 nil
let intFromStr: Int? = Int("a") // Int? 타입
print("int from string : ", intFromStr)

// 딕셔너리 원소 접근
let numbers = ["one":1, "two":2]
let three: Int? = numbers["three"] // Int?
print("three from dictionary : ", three)

/**
 * 옵셔널 타입의 값을 사용하기 - 언래핑 필요
 */

var optionalNumber: Int? = 10
// 컴파일 에러
// let ret = optionalNumber + 1


// ! 기호를 이용한 옵셔널 타입 (IUO, Implicit Unwrapping Optional)
var iuoVal : Int! = 123
// 자동 언래핑
print("iuoVal + 1 :", iuoVal + 1)

iuoVal = nil
// 언래핑 실패 - 에러(크래쉬)
//print("iuoVal(nil) + 1 :", iuoVal + 1)
