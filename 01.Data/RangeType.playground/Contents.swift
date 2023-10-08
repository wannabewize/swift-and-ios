/**
 범위 타입
 */

// Int Type Closed Range
let range1 = 1...10

// 범위 내 개수
print("1...10 count :", range1.count)

// 범위 내 포함
print("1...10 contains 3 :", range1.contains(3))
print("1...10 contains 10 :", range1.contains(10))

// 범위 시작, 끝
print("1...10 lowerBound :", range1.lowerBound)
print("1...10 upperBound :", range1.upperBound)


// Double Type Range
let range2 = 1.1..<1.9
// 범위 내 개수 - 사용 불가
//print("1.1..<1.9 count :", range2.count)

// 범위 내 포함
print("1.1..<1.9 contains 1.5 :", range2.contains(1.5))
print("1.1..<1.9 contains 1.325 :", range2.contains(1.325))
print("1.1..<1.9 contains 1.9 :", range2.contains(2.0))

// 범위 시작, 끝
print("1.1..<1.9 lowerBound :", range2.lowerBound)
print("1.1..<1.9 upperBound :", range2.upperBound)


// String Type range
let range3 = "a"..."c"
print("a...c contains b :", range3.contains("b"))
print("a...c contains z :", range3.contains("z"))

// 난수 발생
let randomNum1 = (1...10).randomElement()
let randomNum2 = (1...10).randomElement()
let randomNum3 = (1...10).randomElement()

print("Random Number1, Number2 :", randomNum1, randomNum2, randomNum3)
