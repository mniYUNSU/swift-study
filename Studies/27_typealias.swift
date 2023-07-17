import UIKit

protocol Naming {
    func getName() -> String
}

protocol Aging {
    func getAge() -> Int
}

// 이 프로토콜들을 이 이름으로 같이 쓰겠다!
typealias Friendable = Naming & Aging
typealias FullNaming = Naming

struct Friend : Friendable {
    var name : String
    var age : Int
    
    func getName() -> String {
        return self.name
    }
    func getAge() -> Int {
        return self.age
    }
}

typealias FriendName = String
var friendName : FriendName = "윤수"

typealias Friends = [Friend]
var myFriendsArray : Friends = []

typealias StringBlock = (String) -> Void
func sayHi(completion : StringBlock) {
    print("안녕?")
    completion("오늘도 열심히!")
}

sayHi(completion: {
    saying in
    print("받음 : \(saying)") // 받음 : 오늘도 열심히!
})

typealias MyType = MyClass.MY_TYPE
class MyClass {
    enum MY_TYPE {
        case DOG,CAT,BIRD
    }
    var myType = MY_TYPE.DOG
}

var myClass = MyClass()
myClass.myType = MyType.DOG
print("myClass.myType : \(myClass.myType)") // myClass.myType : DOG
