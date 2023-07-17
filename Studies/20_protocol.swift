import UIKit

// 약속 : ~ing , ~able, ~delegate
protocol Naming {
    // 값을 가져올 수도, 세팅할 수도 있다.
    // name 이라는 변수를 갖고 있을 것이다 라고 약속하는 것
    var name : String { get set }
    // 메소드 또한 동일
    func getName() -> String
}

// protocol implement
struct Friend : Naming {
    var name: String
    
    func getName() -> String {
        return "친구 : " + self.name
    }
}

var myFriend = Friend(name: "윤수")
myFriend.getName() // "친구 : 윤수"
