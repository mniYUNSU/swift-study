import UIKit

// 멤버 변수 name 을 갖는 struct
// struct 구조의 변수 값을 변경하려면 mutating 키워드 필요
struct Friend {
    var name : String
    // mutating 키워드로 멤버 변수의 값을 변경하는 메소드
    mutating func changeName() {
        self.name = "안녕! " + self.name
    }
}

var myFriend = Friend(name: "윤수")
print(myFriend.name) // 윤수

myFriend.changeName()
print(myFriend.name) // 안녕! 윤수

