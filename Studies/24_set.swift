import UIKit

var myNumberSet : Set<Int> = Set<Int>()

myNumberSet.insert(1)
myNumberSet.insert(2)
myNumberSet.insert(3)
myNumberSet.insert(1)

myNumberSet.count // 3
myNumberSet

for aNumber in myNumberSet {
    print("aNumber : \(aNumber)")
}

var myFriends : Set<String> = ["철수", "윤수", "지수"]
myFriends.contains("철수") // true
myFriends.contains("짱구") // false

var myBestFriends : [String] = ["철수", "윤수", "지수"]
myBestFriends.contains("짱구") // false

if let indexToRemove = myFriends.firstIndex(of: "윤수") {
    print("indexToRemove :  \(indexToRemove)")
    myFriends.remove(at: indexToRemove)
}

myFriends
