/*
 * 딕셔너리 타입
 */


// 딕셔너리 만들기
// 타입 선언 생략
var dic = ["1월":"January", "2월":"February", "3월":"March"]
// Shorthand
var dic2 : [String: Int] = ["일" : 1, "이" : 2, "삼" : 3]
// 빈 Dictionary 객체
var emptyDic1 : [Int: Int] = [:]
var emptyDic2 = [Int: Int]()

// 딕셔너리 원소의 개수
print("dic.count : ", dic.count)
print("emptyDic1, emptyDic2 count : ", emptyDic1.count, emptyDic2.count)

print("== 딕셔너리 원소 접근 ==")
// 딕셔너리의 값 접근하기
let value1 = dic["1월"]!
print("dic[1월] : ", value1) // "January"
// 딕셔너리에 없는 키로 접근하면 nil이 반환된다.
let value2 = dic2["사"]
print("dic[사] : ", value2) // nil

// 딕셔너리에 없는 키로 접근했을 때 nil대신 출력될 값에 해당하는 키를 입력.
let value3 = dic["사", default: "원소가 없습니다."]
print("dic[사] :", value3)

// For를 이용해서 딕셔너리 순회.
print("== 딕셔너리 원소 순회 ==")
// 딕셔너리의 모든 키를 배열로 얻기
let keys = dic.keys
for key in keys {
    print("For and Dictionary1. Key:", key, "Value:", dic[key]!)
}

// 튜플을 이용해서 딕셔너리의 모든 키, 밸류 순회
for (key, value) in dic {
    print("For and Dictionary2. Key:", key, "Value:", value)
}

print("== 딕셔너리 원소 수정 ==")
// 딕셔너리에 값 설정/수정하기
// 기존에 없는 값 설정 -> 추가
dic["4월"] = "april"
dic["5월"] = "May"
print("dic[4월], dic[5월] 값 설정 :", dic)

// 기존의 값을 변경
dic["4월"] = "잔인한 달"
print("dic[4월] 값 설정 :", dic)

print("== 딕셔너리 원소 삭제 ==")
// 딕셔너리에서 원소 삭제하기
let removed = dic.removeValue(forKey:"2월")
print("removed :", removed!)

dic["3월"] = nil
print("dic[3월] = nil : ", dic)
