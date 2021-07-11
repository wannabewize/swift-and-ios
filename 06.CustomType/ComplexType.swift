/**
 복합 타입
 */

struct Director {
    let name: String
    let nationality: String
    
    func greeting() {
        print("\(name)은(는) \(nationality)의 감독입니다.")
    }
}

struct Movie {
    var title: String
    let director: Director
    
    func introduce() {
        print("제목 : \(self.title), 감독 이름 : \(self.director.name)")
        director.greeting()
    }
}


let isaac = Director(name: "봉준호", nationality: "대한민국")
let minari = Movie(title: "옥자", director: isaac)
minari.introduce()