// For Loop
let limit = 3

// 범위를 사용하는 For Loop. C 스타일 for 문은 삭제
for i in 0..<limit {
    print(i)
}

// 배열 순회
let array = [1, 2, 3]

for item in array {
    print(item)
}

// 딕셔너리 순회
var dic = ["일":"one", "이":"two", "삼":"three"]

for (kor, eng) in dic {
    print("Key : \(kor) Value : \(eng)")
}

let count = 3

var i = 0
while i < count {
   print("i = \(i)")
   i += 1 // i++ 은 deprecated
}


// Do-While 대신
var j = 0
repeat {
   print("j = \(j)")
   j += 1 // j++ 은 deprecated
   if j > count {
      break            // break 로 반복 작업 끝내기
   }
} while true
