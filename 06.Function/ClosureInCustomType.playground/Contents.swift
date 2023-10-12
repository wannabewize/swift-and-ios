/**
 * 구조체에 클로저 사용하기
 */
struct Movie {
    let title: String
    let casting: [String]
    
    // 함수 타입의 프로퍼티.
    var introduceFn: ( (String, [String]) -> Void )?
    func introduce() {
        if let fn = introduceFn {
            fn(title, casting)
        }
    }
    
    var showing = 0
    mutating func increseShowing(complete: (Bool) -> Void ) {
        showing += 1
    }
}

var moving = Movie(title: "무빙", casting: ["한효주", "류승용", "고윤정"])
moving.introduceFn = { title, actors in
    print("영화 \(title)에 \(actors.joined(separator: ",")) 배우들이 출연했습니다.")
}
moving.introduce()

// 함수에 클로저 사용
moving.increseShowing { success in
    print("increse showing success?", success)
}


