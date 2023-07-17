import UIKit

// 프로토콜에는 메소드에 직접 로직을 넣을 수 없다. 선언만 가능.
protocol Naming {
    var lastname : String {get set}
    var firstname : String {get set}
    func getName() -> String
}

// extension 을 활용하면 메소드에 로직을 추가할 수 있다.
extension Naming {
    func getFullname() -> String {
        return self.lastname + " " + self.firstname
    }
}

struct Friend : Naming {
    var lastname: String
    var firstname: String
    
    func getName() -> String {
        return self.lastname
    }
}

let myFriend = Friend(lastname: "배", firstname: "윤수")
myFriend.getName() // "배"
myFriend.getFullname() // "배 윤수"


