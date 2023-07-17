import UIKit

final class Friend {
    var name : String
    init(name : String) {
        self.name = name
    }
}

// error 발생
class BestFriend : Friend {
    override init(name : String) {
        super.init(name: "베스트 프렌드 " + name)
    }
}

let myFriend = Friend(name: "윤수")
let myBestFriend = BestFriend(name: "영희")

// 파이널은 상속이 불가능하다.

