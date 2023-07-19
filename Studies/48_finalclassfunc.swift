import UIKit

class MyClass {
    func saySomething(){
        print("saysomething")
    }
    class func sayHi(){
        print("안녕")
    }
    static func sayHello() {
        print("안녕하세요")
    }
    final class func sayHelloHello() {
        print("안녕안녕안녕")
    }
}

// 메모리에 올리지 않고 사용 가능한 메소드
MyClass.sayHi()
// class func - 상속 가능
// 나머지는 상속 불가

