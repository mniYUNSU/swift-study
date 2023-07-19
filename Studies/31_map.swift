import UIKit

// Map
// 콜렉션 - 데이터들의 모음
// 콜렉션 안에는 배열, 딕셔너리, Set 등이 있다.

// Map 이란 콜렉션 내 데이터들의 형태를 변경하는 것
let friendArray : [String] = ["윤수", "철수", "수진", "나나"]

let myFriends = friendArray.map { aFriend in
    return "내 친구 " + aFriend
}

myFriends // ["내 친구 윤수", "내 친구 철수", "내 친구 수진", "내 친구 나나"]

let myBestFriend = friendArray.map {
    return "베프 \($0)"
}

myBestFriend // ["베프 윤수", "베프 철수", "베프 수진", "베프 나나"]


// nil 이 있는 optional 변수는 언래핑이 필요하다.
let bestFriendArray : [String?] = ["윤수", nil,"철수", "수진", "나나", nil]
let myBFs = bestFriendArray.map { aBF in
    return "내 BF \(aBF ?? "")"
} // ["내 BF 윤수", "내 BF ", "내 BF 철수", "내 BF 수진", "내 BF 나나", "내 BF "]

// optional 변수를 compactMap 으로 편하게 제외할 수 있다.
let myBFss = bestFriendArray.compactMap { aBF in
    return aBF
} // ["윤수", "철수", "수진", "나나"]
