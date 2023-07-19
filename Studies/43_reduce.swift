import UIKit

struct Friend: Hashable {
    var name: String
    var age: Int
}

let myFriends = [
    Friend(name: "철수", age: 10),
    Friend(name: "민수", age: 10),
    Friend(name: "짱구", age: 20),
    Friend(name: "맹구", age: 20),
    Friend(name: "윤수", age: 30),
]

// reduce - 축적하여 합친다. 초기값 0으로
// partialResult - 축적된 값
let totalAge = myFriends.reduce(0) { partialResult, aFriend in
    partialResult + aFriend.age
}
totalAge // 90

// dictionary 로 같은 나이별로 그룹핑하겠다.
let groupedFriends = myFriends.reduce(into: [:]) { partialResult, aFriend in
    partialResult[aFriend.age] = myFriends.filter{
        $0.age == aFriend.age
    }
}
groupedFriends
