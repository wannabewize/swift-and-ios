/*
 * class 정의와 객체 생성
 */

class Coffee {
    var name : String
    var shot : Int
    init(name: String, shot: Int) {
        self.name = name
        self.shot = shot
    }
    
    func addShot() {
        shot += 1
    }
}

let americano = Coffee(name: "아메리카노", shot: 2)
print("\(americano.name) 샷 : \(americano.shot)")

americano.addShot()
print("\(americano.name) 샷 추가 후 : \(americano.shot)")
