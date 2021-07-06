/*
 * 정수형 타입
 * Int, UInt
 * (U)Int8, (U)Int16, (U)Int32, (U)Int64
 */

let intVal = 1 // 기본 Int 타입
let uintVal : UInt = 2

// Unsigned Int는 양수만 다룰 수 있다.
// ERROR: Negative integer '-2' overflows when stored into unsigned type 'UInt'
//let uintVal2 : UInt = -2

// Int8은 8비트 크기. -128 ~ 127 까지 다룰 수 있다.
let int8Val : Int8 = 3
// ERROR: Integer literal '128' overflows when stored into 'Int8'
//let int8Val2 : Int8 = 128

// UInt8은 8비트 크기. 0~255까지 다룰 수 있다.
let uint8Val : UInt8 = 255
// ERROR: Integer literal '256' overflows when stored into 'UInt8'
//let uint8Val2 : UInt8 = 256

// 타입 크기 : .max, .min
print("Int8.max : ", Int8.max)
print("UInt8.min : ", UInt8.min)
print("Int.max : \(Int.max), Int.min : \(Int.min)")

// 64bit cpu에서 Int는 Int64와 같은 크기다.
print("Int.max == Int64.max :", Int.max == Int64.max)

// 타입 변환, 호환성, 수동 타입 변환

// ERROR : Cannot convert value of type 'Int8' to specified type 'Int'
//let intVal2: Int = int8Val

let intVal3: Int = Int(int8Val)
print("Int8 -> Int Convert :", intVal3)

// 서로 다른 타입의 값 계산하기
// ERROR : Cannot convert value of type 'UInt8' to specified type 'Int'
//let intVal4: Int = 10 + uint8Val
let intVal5: Int = 10 + Int(uint8Val)

// Bool 에서 Int 변환 불가
// ERROR: No exact matches in call to initializer
//let intFromBool = Int(true)

// 실수형 값에서 Int 변환
let intFromDouble = Int(3.14)
print("Int(3.14) :", intFromDouble)

// 문자열에서 Int 변환.
let intFromString = Int("1234")
print("Int(\"1234\") :", intFromString)

let intFromString2 = Int("a")
print("Int(\"a\") :", intFromString2)


// 2진수 다루기
let binaryVal = 0b1011 // 11
print("binary Value : ", binaryVal)
let binaryVal2 = Int("1010", radix: 2)
print("Int From BinString(1010) : ", binaryVal2)


// 8진수 다루기
let octetVal = 0o77 // 63
print("octec Value : ",octetVal)
let octetVal2 = Int("123", radix: 8)
print("Int From OctString(123) : ", octetVal2)
// 변환에 실패하면 nil. 옵셔널
let octetVal3 = Int("1F5", radix: 8)
print("Int From OctString Fail : ", octetVal3)

// 16진수 다루기
let hexVal = 0xFF // 255
print("hex Value : ",hexVal)
let hexVal2 = Int("1F4", radix: 16)
print("Int From HexString(1F4) : ", hexVal2)

