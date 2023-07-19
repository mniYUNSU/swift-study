import UIKit

class Friend {
    func sayHi() {
        print("HELLO")
    }
    class func sayBye() {
        print("BYE BYE")
    }
    static func saySiu() {
        print("SIUUUUUUUUU")
    }
}

class BestFriend : Friend {
    class override func sayBye() {
        super.sayBye()
        print("OVERRIDE BYE BYE")
    }
    func saySiu() {
        print("OVERRIDE SIUUUUUUUU")
    }
}

let myFriend = Friend()
myFriend.sayHi() // HELLO
Friend.sayBye() // BYE BYE

BestFriend.sayBye() // BYE BYE OVERRIDE BYE BYE
BestFriend.saySiu() // SIUUUUUUUUU
