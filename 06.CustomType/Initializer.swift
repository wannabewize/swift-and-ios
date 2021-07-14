class Coffee {
    var name : String
    var shot : Int
    convenience init() {
        self.init(name: "", shot: 0)
    }
    
    convenience init(name: String) {
        self.init(name: name, shot: 0)
    }
    
    // Designated Initializer
    init(name: String, shot: Int) {
        self.name = name
        self.shot = shot
    }
}

var coffee1 = Coffee()
var coffee2 = Coffee(name: "Coffee2")
var coffee3 = Coffee(name: "Ice Americano", shot: 2)


