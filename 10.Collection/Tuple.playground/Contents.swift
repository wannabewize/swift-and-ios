//
// 튜플(Tuple)
//

// 튜플 선언. 타입 생략 가능
var one = (1, "one", "일")
// 투플 원소에 접근해서 값 얻기
print("one.2 :", one.2)
// 튜플 값 수정
one.2 = "하나"
print("one.2 = 하나", one) // (1, "one", "하나")

// 튜플 타입 선언, 튜플 원소 접근 이름
let two: (Int, String, String) = (2, "two", "둘")
print("two.0:", two.0, "two.1:", two.1)

// 튜플 원소에 이름 설정
let three: (num: Int, eng: String, kor: String) = (num : 3, eng : "three", kor : "삼")
print("three.0 :", three.0, "three.1 :", three.1)
print("three.num : \(three.num), three.kor : \(three.kor)")

// 원소 접근 에러
//print("one.3 :", one.3, "three.esp :", three.esp)

// 튜플 원소 대입
let (two1, two2, two3) = two
print("(two1, two2, two3) = two :", two2)

// 튜플 원소 중 일부만 대입
let (_, _, korOne) = one
print("(_, _, korOne) = one :", korOne)

// 투플 간 비교
print("(1,1) == (1,1) : ",(1, "1") == (1, "1"))
print("(1, one) < (2, two) : ", (1, "one") < (2, "two"))
print("(1, one) < (1, first)", (1, "one") < (1, "first"))

// 새로운 튜플에 값 대입 - 복사된다. 밸류타입
var sam = three
sam.eng = "Third"
sam.kor = "세번째"


