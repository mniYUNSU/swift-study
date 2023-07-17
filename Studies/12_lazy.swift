import UIKit

// lazy : 스트럭트를 사용할 때 나중에 메모리에 올린다.
struct Pet {
    init(){
        print("Pet 이 생성되었다.")
    }
}

struct Friend {
    var name: String
    lazy var pet : Pet = Pet()
    init(_ name: String) {
        self.name = name
        print("Friend 가 생성됨")
    }
}

var myFriend = Friend("윤수") // Friend 가 생성됨
myFriend.pet // Pet 이 생성되었다.

