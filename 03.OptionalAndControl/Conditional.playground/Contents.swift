// if Basic
if 3 > 2  {
   print("3이 2보다 크다!")
}

// if - else if - else
var bloodType = "C"
if bloodType == "A" {
  print("혈액형은 A")
}
else if bloodType == "B" || bloodType == "O" {
  print("B나 O형")
}
else {
  print("그러면 AB형")
}


// guard
// if, guard 조건문 작성 방법 차이
var array = [1, 2, 3, -1, 4, 5]

// if를 이용한 조건
for item in array {
   // 종료 상황의 조건
   if item < 0 {
      break
   }
   print(item)
}

// guard 사용
for item in array {
   // 흐름을 이어가는 조건
   guard item > 0 else {
      print("item의 값이 0보다 크지 않다.")
      break
   }
   print(item)
}

