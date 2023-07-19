import UIKit


// 추가 생성자
class Friend {
    var name: String
    var age: Int
    init(name: String){
        self.name = name
        self.age = 10
    }
    // 기존에 내가 갖고 있는 생성자에 추가해 무언가를 더 할 수 있다.
    convenience init(name: String, age: Int) {
        self.init(name: name)
        self.age = age
    }
}

let myFriend = Friend(name: "윤수", age: 20)
myFriend.age // 20

