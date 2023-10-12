// struct를 이용한 타입 정의
struct Movie {
    let title: String
    let casting: [String]
    // 초기값이 있는 프로퍼티
    var showing: Int = 0

    // instance method
    func introduce() {
        print("""
        이 영화의 이름은 \(title) 입니다.
        배우 \(casting.joined(separator: ", ")) 이(가) 출연했습니다.
        총 시청자 수는 \(showing) 입니다.
        """)
    }
    
    mutating func increaseShowing() {
        showing += 1
    }
    
    static func introduceMovie() {
        print("영화란.... 무엇일까요?")
    }
}

// showing 값 변경하므로 let으로는 불가. var 사용
var moving = Movie(title: "무빙", casting: ["조인성", "한효주", "류승용", "고윤정"])
// mutating method 사용
moving.increaseShowing()
moving.increaseShowing()

// instance method 사용
moving.introduce()

// static method 사용
Movie.introduceMovie()

