/*
* 변수와 상수
*/

// 상수

// 상수 선언
let constant1 = 10
// Error : 상수에 새로운 값 대입 불가
// constant1 = 20

// 타입 선언과 함께 상수 선언
let constant2 : Character = "!"

// 상수 선언과 값 대입(초기화) 분리
let constant3 : Float
constant3 = 1.23

print("constant1 :", constant1)
print("constant2 :", constant2)
print("constant3 :", constant3)

// 변수

// 값과 함께 변수 선언
var value1 = 10
// 변수의 값은 변경 가능
value1 = 20

print("var-value1 :", value1)

// 초기화되지 않은 변수 사용은 에러
var value2 : Int
// error: variable 'value2' used before being initialized
// print(value2)

// 타입이 다른 값을 대입하면 에러
var value3: Int = 10
// error: cannot assign value of type 'String' to type 'Int'
// value3 = "10"


// 예약어를 변수로 사용 가능. backtick(`) 기호 사용
let `default` = 1
let `var` = "Variable"

print("constant name defult:", `default`)
print("constant name var:", `var`)
