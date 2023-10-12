//
// 옵셔널 체인
//

var optionalStr : String? = "ABC"

let str = optionalStr?.lowercased() // str은 옵셔널 타입. Optional("abc")
print(str)


optionalStr = nil
let str2 = optionalStr?.lowercased() // nil
print(str2)


// 옵셔널 체인에 강제 언래핑 사용

optionalStr = "ABC"
let str1 = optionalStr!.lowercased() // str1은 논옵셔널 타입.
print(str1)

// 강제 언래핑을 사용한 옵셔널 체인 - 에러
optionalStr = nil
//let str2 = optionalStr!.lowercased() // Error
 
