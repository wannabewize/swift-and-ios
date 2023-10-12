/**
 * 함수 타입
*/

// 함수 타입 : () -> (), () -> Void
func sayHello() {
   print("Hello")
}

let fn1: () -> () = sayHello
let fn2: () -> Void = sayHello

// 함수를 대입한 상수로 함수 실행하기
fn1()
fn2()

// 파라미터가 있는 함수의 함수 타입
func sayBye(who : String) {
   print("byebye \(who)")
}

func say(who : String, what : String) {
   print("say \(what) to \(who)")
}

let fn3: (String) -> Void = sayBye
let fn4: (String, String) -> () = say

// 파라미터 레이블은 생략
fn3("my old iPhone")
fn4("my new iPhone", "welcome")

// 반환값이 있는 함수의 함수 타입
func add(i : Int, j : Int) -> Int {
   return i + j
}

var fn5: (Int, Int) -> Int = add

let addRet = fn5(1, 2)
print("addRet :", addRet)

// 타입이 같은 함수
func multiply(i : Int, j : Int) -> Int {
   return i * j
}

// 같은 타입의 "값" 이므로 변수(var)에 대입 가능
fn5 = multiply
let multiplyRet = fn5(1, 2)
print("multiplyRet :", multiplyRet)




