/*
* 배열
*/

// 배열과 배열 타입
let intArray = [1, 2, 3, 4, 5]
let strArray : [String] = ["A", "B", "C"]
let floatArray = Array<Float>([1.1, 2.2, 3.3])

print("== 배열 생성")
print("intArray :", intArray)
print("strArray :", strArray)
print("floatArray :", floatArray)

// 빈 배열 생성
var emptyArray : [Int] = []
var emptyArray2 = [Double]()
var emtpyArray3 = Array<String>()

// 원소 갯수
print("\n== 원소 갯수")
print("intArray : count : ", intArray.count)
print("emptyArray isEmpty : ",emptyArray.count)

// 빈 배열 확인
print("\n== 빈 배열 확인")
print("intArray isEmpty : ",intArray.isEmpty)
print("emptyArray isEmpty : ",emptyArray.isEmpty)


// 배열 내용 접근
let element1 = intArray[0] // 1
let element2 = floatArray[1] // 2.2
print("\n== 인덱스로 접근하기(subscript)")
print("intArray[0] :", element1)
print("floatArray[1] :", element2)

// 인덱스가 벗어나면 에러 - fatal error: Index out of range
// let element3 = strArray[3]

// 첫 원소, 마지막 원소
let element4 = floatArray.first
let element5 = strArray.last
print("\n== 첫 원소, 마지막 원소")
print("floatArray.first :", element4)
print("strArray.last :", element5)

print("\n== 배열 내 원소 포함 여부 확인")
// 원소 포함 여부
print("intArray contains(3): ", intArray.contains(3))
print("intArray contains(6): ", intArray.contains(6))


// 배열 수정
print("\n== 배열 수정 예제")

// 배열 수정은 var로 선언해야 가능. let으로 선언한 배열은 수정 불가
var editableArray : [Int] = [1, 2, 3]
print("editableArray: ", editableArray)

// 원소를 배열 끝에 추가
print("\n== 배열에 원소 추가")
editableArray.append(5) // [1, 2, 3, 5]
print("editableArray.append(5): ", editableArray)
// 원소를 배열 중간에 추가
editableArray.insert(4, at: 3) // [1, 2, 3, 4, 5]
print("editableArray.insert(4, at: 3): ", editableArray)

// + 연산자를 이용해서 배열 덧붙이기 - 새로운 배열 생성
print("\n== 배열간 + 연산")
let appendedArray = editableArray + [6] // [1, 2, 3, 4, 5, 6]
print("editableArray + [6]:",appendedArray)
// += 연산자를 이용해서 원래 배열에 덧붙이기
editableArray += [6, 7] // [1, 2, 3, 4, 5, 6, 7]
print("editableArray += [6, 7]:",appendedArray)

// 삭제하기
print("\n== 배열 내 원소 삭제")
editableArray.removeLast() // 7
print("editableArray.removeLast() : ",editableArray) // [1, 2, 3, 4, 5, 6]

// index 2 원소 지우기
editableArray.remove(at:2) // 3
print("editableArray.remove(at:2) : ", editableArray) // [1, 2, 4, 5, 6]

// 배열 내 원소 변경
print("intArray : ", editableArray) // [1, 2, 4, 5, 6]
print("intArray[3] : ", editableArray[3]) // 5
editableArray[2] = 3
print("intArray : ", editableArray) // [1, 2, 3, 5, 6]

// 범위를 이용해서 배열 내 원소 변경
editableArray[3..<5] = [4, 5, 6]
print("After [3..<5] = = [4, 5, 6] : ", intArray) // [1, 2, 3, 4, 5, 6]


