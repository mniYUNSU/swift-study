import UIKit

// 키 : 값
var myFriends = ["bestFriend" : "윤수", "highSchool" : "동동"]

let myBestFriend = myFriends["bestFriend"] // 윤수

let oldFriend = myFriends["old"] // nil
let oldFriend2 = myFriends["old", default: "친구없음"] // 친구없음

myFriends["bestFriend"] = "배윤수"
let myBF = myFriends["bestFriend"] // 배윤수

myFriends["newFriend"] = "철수"
let newFriend = myFriends["newFriend"] // 철수

myFriends.updateValue("없음..", forKey: "girlFriend")
let girlFriend = myFriends["girlFriend"] // 없음..

myFriends.updateValue("조지", forKey: "bestFriend")
let myBF2 = myFriends["bestFriend"] // 조지

// empty dictionary
let emptyDictionary : [String : Int] = [:]
let emptyDictionary2 : [String : Int] = [String : Int]()
let emptyDictionary3 = [String : Int]()
let emptyDictionary4 : [String : Int] = Dictionary<String, Int>()

myFriends.count // 4
for item in myFriends {
    print("item : \(item)")
}
// item : (key: "highSchool", value: "동동")
// item : (key: "girlFriend", value: "없음..")
// item : (key: "bestFriend", value: "조지")
// item : (key: "newFriend", value: "철수")
