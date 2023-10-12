/**
 * 클로저
 */

// 파라미터의 타입이 함수 타입인 함수
func doTask ( task: () -> Void ) {
    // 파라미터로 전달받은 함수 실행
    task()
}
// 파라미터로 사용할 함수 정의
func taskFn() {
    print("Task done")
}

doTask(task: taskFn)


// 클로저 표현식 { parameters in }
doTask ( task: {
    print("Task with Closuer express")
} )

// Trailing closures
doTask() {
    print("Task with Trailing closure - 1")
}


doTask {
    print("Task with Trailing closure - 2")
}

// 함수 타입 파라미터가 2개
func doAddTask(first: () -> Int, second: () -> Int ) -> String {
    let firstRet = first()
    let secondRet = second()
    return "\(firstRet) + \(secondRet) = \(firstRet + secondRet)"
}

let ret1 = doAddTask(first: {
    1
}, second: {
    2
})
print("ret1 :", ret1)

let ret2 = doAddTask {
    3
} second: {
    4
}
print("ret2 :", ret2)

// 파라미터가 있는 함수 타입

func generateRandomNumber(task: (Int) -> Void ) {
    let random = (0...9).randomElement()!
    task(random)
}

generateRandomNumber { randomNumber in
    print("random number :", randomNumber)
}


// 함수를 반환하는 함수
func generateIncrementFn() -> (Int) -> Int {
    func increseOne(value: Int) -> Int {
        return value + 1
    }
    return increseOne
}

let incFn1 = generateIncrementFn()
print("3 + 1 = \(incFn1(3))")

// 함수를 반환하는 함수 - Closure expression
func generateTwiceFn() -> (Int) -> Int {
    return { value in
        value * 2
    }
}

let twiceFn = generateTwiceFn()
print("2 * 5 = \(twiceFn(5))")


// 파라미터를 이용해서 증가시키기
func generateIncrementValueFn(amount: Int) -> (Int) -> Int {
    { value in value + amount }
}

let increse10 = generateIncrementValueFn(amount: 10)
print("10 + 10 = \(increse10(10))")
