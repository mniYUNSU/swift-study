import UIKit

let myFriendArray : [String] = ["윤수", "철수", "수진", "나나"]

var friendsWithIndex : [String] = []

for (index, aFriend) in myFriendArray.enumerated() {
    print("index : \(index), item : \(aFriend)")
    friendsWithIndex.append("\(index) 번 \(aFriend)")
}

//index : 0, item : 윤수
//index : 1, item : 철수
//index : 2, item : 수진
//index : 3, item : 나나
