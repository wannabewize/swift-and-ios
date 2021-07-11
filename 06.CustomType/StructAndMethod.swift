/**
 구조체와 메소드, mutating
 */
struct Person {
    var name: String
    
    func greeting() {
        print("\(name)이 인사를 합니다")
    }
}

let isaac = Person(name: "정이삭")
isaac.greeting()



struct Director {
    var name: String
    var numberOfAcademyAward: Int
    
    func greeting() {
        print("\(name)이 인사를 합니다")
    }
    
    mutating func gotAwarded() {
        numberOfAcademyAward += 1
    }
}


var bong = Director(name: "봉준호", numberOfAcademyAward: 0)
bong.greeting()

bong.gotAwarded()
bong.gotAwarded()
bong.gotAwarded()
bong.gotAwarded()
print("이름 : \(bong.name) 아카데미 수상 : \(bong.numberOfAcademyAward)회")

