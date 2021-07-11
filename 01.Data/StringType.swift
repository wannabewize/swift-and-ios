/*
* 문자열 타입
*/

// 기본 타입은 문자열(String)
let str1 = "Hello, Swift Language"
let str2 : String = "Swift"
// 멀티라인(multiline) 문자열
let str3 = """
    line1
    line2
    """

// String Interpolation
let str4 = "1 + 2 = \(1+2)"
let str5 = "Hello, \(str2)"
print("String Interpolation :", str4)
print("String Interpolation :", str5)

// Bool 값에서 문자열 변환
let strFromBool = String(true)
print("String from Bool : \(strFromBool)") // "true"

// 문자와 문자열
let charVal : Character = "♥"
let strFromChar = String(charVal)

// 정수형 값에서 문자열 변환
let strFromInt = String(1234)
print("String from Int : \(strFromInt)")

// 실수형 값에서 문자열 변환
let strFromFloat = String(3.14)
print("String from Float : \(strFromFloat)")

// 문자열 길이
print("String Count ", str1.count, str2.count, str3.count)

// 문자열 비교
print("Swift == Swift :", str2 == "Swift")
print("hasPrefix(Hello) :", str1.hasPrefix("Hello"))
print("hasSuffix(ge) :", str1.hasSuffix("ge"))

/*
 * 대소문자 변경: uppercased, lowercased
 * 변경된 문자열이 새로 생성됨
 */
let uppercaseStr = str1.uppercased()
let lowercaseStr = str1.lowercased()
print("uppercased :", uppercaseStr, ", lowercased:", lowercaseStr)


/**
 * 문자열 덧붙이기: +, append
 */
var mstr = "Hello"
mstr = mstr + " Swift"
mstr.append("!")
print("String mutation :", mstr)


// 문자열 삽입/삭제 - String.Index 필요
var mstr2 = "He SwWift"

let index3 = mstr2.index(mstr2.startIndex, offsetBy: 2) // Index : 2
mstr2.insert(contentsOf: "llo", at: index3)
print("mstr2[2] :", mstr2[index3]) // He[l]lo Swift!

// 일부 문자열 삭제
let index4 = mstr2.index(mstr2.endIndex, offsetBy: -4)
mstr2.remove(at: index4)

print("String Insert, Remove :", mstr2)


// 부분 문자열
let subStr: Substring = mstr2[mstr2.startIndex...index3]
print("SubString :", subStr)

// 문자열을 분리 : split()
let commaStr = "123,456,789"
let splited = commaStr.split(separator: ",")
print("Splited by comma :", splited)


// 문자열 범위 교환 : replace()
var replaceStr = "Hello iOS!"
let replaceRangeStart = replaceStr.index(replaceStr.startIndex, offsetBy: 6)
let replaceRangeEnd = replaceStr.index(replaceStr.endIndex, offsetBy: -2)

replaceStr.replaceSubrange( replaceRangeStart...replaceRangeEnd, with: "Swift")
print("replaced string :", replaceStr) // Hello Swift!
