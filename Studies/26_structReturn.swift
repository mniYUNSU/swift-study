import UIKit


struct Friend {
    var age : Int
    var name : String
    
    func sayHello() -> String {
        print("sayHello()")
        return "저는 \(age)살, \(name) 입니다."
    }
}


var myFriend = Friend(age: 20, name: "윤수")

myFriend.sayHello() // "저는 20살, 윤수 입니다."
