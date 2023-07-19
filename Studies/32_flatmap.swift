import UIKit

let myFriends = [["철수"], ["윤수"], ["짱구", "짱아"], ["맹구", "유리"]]

let flatMapped = myFriends.flatMap{
    (item: [String]) in
    return item
}

flatMapped // ["철수", "윤수", "짱구", "짱아", "맹구", "유리"]
