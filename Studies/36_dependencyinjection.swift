import UIKit

// protocol : 약속, 무언가를 강제하는 것.
protocol Talking {
    var saying: String { get set }
    func sayHi()
}

class TalkingImplementation: Talking {
    var saying: String = "토크 "
    func sayHi() {
        print("안녕~")
    }
}

// Talking 이라는 약속은 지킨다. Talking implementation
// 하는 행동에 따라 값이 다르게 나오도록 만든다.
class BestTalk : Talking {
    var saying: String = "베스트 토크 "
    func sayHi() {
        print("찐친 안녕~")
    }
}

class OldTalk : Talking {
    var saying: String = "올드 토크 "
    func sayHi() {
        print("오랜만이야")
    }
}


class Friend {
    // BestTalk, OldTalk 모두 가능하다.
    var talkProvider: Talking
    var saying: String {
        get {
            talkProvider.saying
        }
    }
    
    init(_ talkProvider: Talking){
        self.talkProvider = talkProvider
    }
    
    func setTalkProvider(_ newProvider : Talking) {
        self.talkProvider = newProvider
    }
    
    func sayHi() {
        talkProvider.sayHi()
    }
}

// BestTalk 의존성
let myBestFriend = Friend(BestTalk())
myBestFriend.sayHi() // 찐친 안녕~
myBestFriend.saying // 베스트 토크

// OldTalk 의존성
let myOldFriend = Friend(OldTalk())
myOldFriend.sayHi() // 오랜만이야

// OldTalk 를 새로운 프로바이더로 변경
myOldFriend.setTalkProvider(TalkingImplementation())
myOldFriend.saying // 토크
myOldFriend.sayHi() // 안녕~
