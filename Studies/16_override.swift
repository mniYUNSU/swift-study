import UIKit

class Friend {
    var name : String
    init(_ name: String){
        self.name = name
    }
    
    func sayHi(){
        print("안녕하세요 \(self.name) 입니다.")
    }
}

class BestFriend : Friend {
    // override 로 부모의 메소드를 가져온다.
    override init(_ name: String) {
        // super 로 부모의 메소드 사용
        super.init("베스트 프렌드 " + name)
    }
    
    override func sayHi() {
        super.sayHi()
    }
}

let myFriend = Friend("윤수")
myFriend.sayHi() // 안녕하세요 윤수 입니다.

let myBestFriend = BestFriend("동동")
myBestFriend.sayHi() // 안녕하세요 베스트 프렌드 동동 입니다.

