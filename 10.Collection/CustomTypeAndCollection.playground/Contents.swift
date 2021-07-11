/**
 커스텀 타입과 콜렉션
 */

struct Movie {
    var title : String
    var year : Int
}

// 커스텀 타입의 배열
var movies = [
    Movie(title: "스타워즈", year: 1977),
    Movie(title: "제국의 역습", year: 1980)
]

movies.append(Movie(title: "제다이의 귀환", year: 1983))

print("movies :", movies)

// 배열에서 원소 얻기
let item: Movie = movies[2]
print("movies[2] :", item)


// 커스텀 타입

class Number {
    let kor: String
    let eng: String
    init(kor: String, eng: String) {
        self.kor = kor
        self.eng = eng
    }
}

// 딕셔너리의 밸류 타입으로 커스텀 타입 사용
var numbers: [Int: Number] = [
    1: Number(kor: "하나", eng: "one"),
    3: Number(kor: "셋", eng: "three")
]

// 딕셔너리에 원소 추가
numbers[2] = Number(kor: "둘", eng: "two")

// 딕셔너리에서 원소 얻기
// 강제 언래핑. Not good. if-let 바인딩이 더 좋은 선택임.
let item2 = numbers[2]!
print("numbers[2] :", item2.kor, item2.eng)
