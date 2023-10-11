protocol Shape {
    func draw() -> String
}

struct Triangle: Shape {
    var size: Int
    func draw() -> String {
        var result: [String] = []
        for length in 1...size {
            result.append(String(repeating: "*", count: length))
        }
        return result.joined(separator: "\n")
    }
}

let smallTriangle = Triangle(size: 3)
print(smallTriangle.draw())

struct FlippedShape<T: Shape>: Shape {
    var shape: T
    func draw() ->String {
        let lines = shape.draw().split(separator: "\n")
        return lines.reversed().joined(separator: "\n")
    }
}

let flippedTriangle = FlippedShape(shape: smallTriangle)
print(flippedTriangle.draw())

struct JoinedShape<T: Shape, U: Shape>: Shape {
    var top: T
    var bottom: U
    func draw() -> String {
        return top.draw() + "\n" + bottom.draw()
    }
}

let joinedTriangle: JoinedShape<Triangle, FlippedShape<Triangle>> = JoinedShape(top: smallTriangle, bottom: flippedTriangle)
print(joinedTriangle.draw())
// Exposing detailed information about the creation of a shape
// allows types that aren’t meant to be part of the ASCII art module’s public interface
// to leak out because of the need to state the full return type.


// Returning an Opaque Type

// an opaque type like being the reverse of a generic type.
// Generic types let the code that calls a function pick the type for that function’s parameters and return value in a way that’s abstracted away from the function implementation.

func max<T>(_ x: T, _ y: T) -> T where T: Comparable {
    return x > y ? x : y
}

print("max :", max(10, 20))


// 제너릭 타입을 사용하면 함수를 호출하는 코드에서 해당 함수의 파라미터에 대한 타입을 선택하고 함수 구현에서 추상화된 방식으로 값을 반환

print("== Opaque Type ==")

// Those roles are reversed for a function with an opaque return type.
struct Square: Shape {
    var size: Int
    func draw() -> String {
        let line = String(repeating: "*", count: size)
        let result = Array<String>(repeating: line, count: size)
        return result.joined(separator: "\n")
    }
}

func makeTrapezoid() -> Shape {
    let top = Triangle(size: 2)
    let middle = Square(size: 2)
    let bottom = FlippedShape(shape: top)
    let trapezoid = JoinedShape(top: top, bottom: JoinedShape(top: middle, bottom: bottom))
    return trapezoid
}

let trapezoid = makeTrapezoid()

print(trapezoid.draw())


func flip<T: Shape>(_ shape: T) -> some Shape {
    return FlippedShape(shape: shape)
}

let flipped = flip(smallTriangle)

func join<T: Shape, U:  Shape>(_ top: T, _ bottom: U) -> some Shape {
    JoinedShape(top: top, bottom: bottom)
}

