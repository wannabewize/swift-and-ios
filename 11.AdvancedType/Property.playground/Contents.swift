/*
 * Property
 * - Computed Property, Stored Property
 * - Property Observer : didSet, willSet
 */

// Computed Property, Stored Property
struct Time {
    // Stored Property
    var sec: Int = 0
    
    // Computed Property
    var minute : Int {
        get {
            return Int(sec / 60)
        }
        set {
            sec = newValue * 60
        }
    }
}

print("== Computed Property ==")
var t = Time()
// computed property의 set이 동작
t.minute = 10
print("10분은 \(t.sec)초")

t.sec = 1200
// computed property의 get이 동작
print("1200초는 \(t.minute)분")


print("== Property Observer ==")

struct ChangeCounter {
    var count: Int = 0
    var value: Int = 0 {
        willSet {
            print("willSet wors. newValue:", newValue)
        }
        didSet {
            // value에 값이 변경되면 동작.
            // 기존 값은 oldValue
            count += 1
            print("didSet works. oldValue:", oldValue)
        }
    }
}

var counter = ChangeCounter()

// property에 새로운 값 대입 - Observer 동작
print("value에 10 대입")
counter.value = 10
print("value에 20 대입")
counter.value = 20

print("변경 횟수 :", counter.count) // 2

print("value에 30 대입")
counter.value = 30

print("변경 횟수 :", counter.count) // 3

