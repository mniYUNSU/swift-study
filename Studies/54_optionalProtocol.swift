import UIKit

protocol Naming{
    var name: String {get set}
}

class Cat : Naming {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Dog : Naming {
    var name: String
    init(name: String) {
        self.name = name
    }
}

extension Naming  {
    func sayName() where Self : Cat {
        print("\(self.name) 냥냥")
    }
    func sayName() where Self : Dog {
        print("\(self.name) 멍멍")
    }
}

let myDog = Dog(name: "멍멍이")
let myCat = Cat(name: "야옹이")
myCat.sayName()
myDog.sayName()
