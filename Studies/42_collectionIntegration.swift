import UIKit

// 콜렉션 - list [], set<>, dictionary[:}
let myFriends = ["철수", "영희", "윤수"]
let otherFriends: Set<String> = ["영수", "짱구", "강인"]

let totalFriends = myFriends + otherFriends
totalFriends // ["철수", "영희", "윤수", "영수", "짱구", "강인"]
