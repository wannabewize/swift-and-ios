/*
* 배열
*/

// 배열과 배열 타입
let intArray = [1, 2, 3, 4, 5]
let strArray : [String] = ["A", "B", "C"]

print("== 배열 생성")
print("intArray :", intArray)
print("strArray :", strArray)

// 빈 배열 생성
var emptyArray : [Int] = []
var emptyArray2 = [Double]()

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
let element2 = strArray[1] // 2.2
print("\n== 인덱스로 접근하기(subscript)")
print("intArray[0] :", element1)
print("strArray[1] :", element2)

// 반복문과 배열
for item in strArray {
    print("For and Array ", item)
}

for index in 0..<strArray.count {
    print("For and Array. Index: \(index), Item: \(strArray[index])")
}

// 인덱스가 벗어나면 에러 - fatal error: Index out of range
// let element3 = strArray[3]

// 첫 원소, 마지막 원소 - 옵셔널 타입
let element4: Int? = intArray.first
let element5: String? = strArray.last
print("\n== 첫 원소, 마지막 원소")
print("intArray.first :", element4!)
print("strArray.last :", element5!)

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

// 삭제하기
print("\n== 배열 내 원소 삭제")
let removed1 = editableArray.removeLast() // 5
print("editableArray.removeLast() : ",editableArray, "removed:", removed1) // [1, 2, 3, 4]

// index 2 원소 지우기
let removed2 = editableArray.remove(at:2) // 3
print("editableArray.remove(at:2) : ", editableArray, "removed:", removed2) // [1, 2, 4]

// 배열 내 원소 수정
print("== 배열 내 원소 수정 ==")
editableArray[2] = 4
print("intArray[2] = 4 =>", editableArray) // [1, 2, 4]
// 범위를 이용한 수정
editableArray[1...2] = [2, 3, 4, 5]
print("intArray[1...2] = [2, 3, 4, 5] =>", editableArray) // [1, 2, 3, 4, 5]
