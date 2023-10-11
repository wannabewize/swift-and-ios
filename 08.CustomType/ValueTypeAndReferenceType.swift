//
// Reference Type vs Value Type
//

struct MyStruct {
    var value: Int
}

var obj1 = MyStruct(value: 0)
// 객체 복사
var obj2 = obj1
// 프로퍼티의 값을 변경
obj1.value = 10
print("구조체1의 값 : \(obj1.value) - 구조체2의 값: \(obj2.value)")

class MyClass {
   var value : Int = 0
}

var obj3 = MyClass()      // 객체 생성
// 객체 참조 - value값 공유
var obj4 = obj3
// 프로퍼티의 값을 변경
obj3.value = 10

print("클래스3의 값 : \(obj3.value) - 클래스4의 값: \(obj4.value)")
