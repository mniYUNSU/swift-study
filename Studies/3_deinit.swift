import UIKit

class MyFriend {
    var name : String
    init(_ name: String = "이름 없음"){
        self.name = name
        print("MyFriend 가 메모리에 올라갔다. - \(self.name)")
    }
    deinit {
        print("객체가 사라졌다. - \(self.name)")
    }
    
    // deinit 검증 로직
    var calledTimes = 0
    let MAT_TIMES = 5
    static var instancesOfSelf = [MyFriend]()
    class func destroySelf(object: MyFriend)
    {
        instancesOfSelf = instancesOfSelf.filter {
            $0 !== object
        }
    }
    func call() {
        calledTimes += 1
        print("called \(calledTimes)")
        if calledTimes > MAT_TIMES {
            MyFriend.destroySelf(object: self)
        }
    }
}

let myFriend = MyFriend("윤수")
let aFriend = MyFriend()

let anObjectMemoryAddress = Unmanaged.passUnretained(aFriend).toOpaque()
let secondMemoryAddress = Unmanaged.passUnretained(myFriend).toOpaque()

print(anObjectMemoryAddress)
print(secondMemoryAddress)

weak var selfDestructingObject = MyFriend("배윤수")
if selfDestructingObject != nil {
    selfDestructingObject!.call()
} else {
    print("객체가 없습니다.")
}
