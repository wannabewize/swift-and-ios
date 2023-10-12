/*
 * 함수 내부에 함수 정의하기
 */

func outerFunc() {
   func innerFunc() {
      print("Inner Function works")
   }
   
   print("Outer Function works")
   
   innerFunc()
}


outerFunc()

// Error - 내부에 정의된 함수 접근 불가(error: cannot find 'innerFunc' in scope)
// innerFunc() // Error


// 3중첩
func funcA() {
    func funcB() {
        func funcC() {
            print("C")
        }
        print("B")
        funcC()
    }
    print("A")
    funcB()
}
funcA()

