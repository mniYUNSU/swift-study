import UIKit

let myRange = 0...2 // 0, 1, 2
let mySecondRange = 0..<2 // 0, 1
let myThirdRange = 0...Int.max

let myFriends = ["철수", "짱구", "맹구", "윤수"]

myFriends[mySecondRange] // ["철수", "짱구"]

if mySecondRange.contains(2) {
    print("conatin")
} else {
    print("not contain")
}
