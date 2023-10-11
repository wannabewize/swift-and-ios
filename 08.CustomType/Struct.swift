/*
 * Struct 정의와 객체 생성
 */

struct Movie {
    var title : String
    var year : Int
}

// 객체 생성
var avata = Movie(title: "아바타", year: 0)
// 프로퍼티 접근
let title = avata.title
// 프로퍼티 값 변경
avata.year = 2009

print("제목 : \(avata.title) - 개봉 : \(avata.year)")

// let으로 생성한 구조체 객체의 프로퍼티 값 변경 불가능
let avengers = Movie(title: "어밴져스", year: 2012)
// Error : Cannot assign to property: 'avata' is a 'let' constant
//avengers.year = 0

print("제목 : \(avengers.title) - 개봉 : \(avengers.year)")

struct City {
    var name : String
    let utc : Int
}

var seoul = City(name: "Seoul", utc: 9)
seoul.name = "서울"
// let 프로퍼티는 변경 불가
// Error : Cannot assign to property: 'utc' is a 'let' constant
//seoul.utc = 10
print("이름 : \(seoul.name) -UTC : \(seoul.utc)")


// 초기값이 있는 프로퍼티
struct Song {
    var title: String
    var artist: String
    var download: Int = 0
}

// 초기값이 있는 프로퍼티 구조체에서 인스턴스 생성
let song1 = Song(title: "좋은날", artist: "IU")
let song2 = Song(title: "금요일에 만나요", artist: "IU", download: 999999)


struct Bird {
    var name: String
    // 정적 프로퍼티
    static let species = "새"
}

print(Bird.species)



