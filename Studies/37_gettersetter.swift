import UIKit

// getter : 가져오는 것
// setter : 설정하는 것
class Friend {
    var name: String = ""
    var age: Int
    
    var detailInfo : String = ""
    
    var info: String {
        // info를 가져온다.
        get {
            return "내 친구 \(name) 나이는 \(age)"
        }
        set {
            detailInfo = "info에서 설정됨 : " + newValue
        }
    }
    
    init(_ name: String, _ age: Int){
        self.name = name
        self.age = age
    }
}

let myFriend = Friend("윤수", 20)
myFriend.info // "내 친구 윤수 나이는 20"
myFriend.info = "새로운 친구"
myFriend.detailInfo // "info에서 설정됨 : 새로운 친구"
