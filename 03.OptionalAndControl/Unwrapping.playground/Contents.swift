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

// if, guard 옵셔널 바인딩 비교
func printIfNotNil(value: Int?) {
    if let unwrapped = value {
        print("if로 옵셔널 바인딩.", unwrapped)
    }
    else {
        print("if로 옵셔널 바인딩. nil!")
    }
}

printIfNotNil(value: 1)
printIfNotNil(value: nil)


// guard를 이용한 언래핑
func printIfNotNil2(value: Int?) {
    guard let unwrapped = value else {
        print("guard로 옵셔널 바인딩. nil!")
        return
    }
    print("guard로 옵셔널 바인딩.", unwrapped)
}


printIfNotNil2(value: 2)
printIfNotNil2(value: nil)


// 강제 언래핑 - non optional 타입

var optionalVal: Int? = 1
let forcedUnwrapped1: Int = optionalVal!

// nil일때 언래핑 실패 - crash
optionalVal = nil
//let forcedUnwrappedError: Int = optionalVal!

let one: Int = Int("1")!
print("one :", one)

let two: Int = numbers["two"]!
print("Forced Unwrapping. two:", two)

// 강제 언래핑 - 언래핑 실패시 에러
//let three = numbers["three"]!


// ?? 기호
var carPlate: String? = nil
print("차량 번호는 \(carPlate ?? "차량 없음")")

var nickName: String? = "겨울이"
let yourNickName1: String = nickName ?? "닉네임 없음"
print("your nick name :", yourNickName1)

nickName = nil
let yourNickName2: String = nickName ?? "닉네임 없음"
print("your nick name :", yourNickName2)
