import UIKit

// String을 반환하는 클로저
let myName : String = {
    return "윤수"
}()

print(myName)


// string 을 name 매개변수로 받아 string을 리턴하는 클로저
let myRealName : (String) -> String = { (name:String) -> String in
    return "개발하는 \(name)"
}

myRealName("배윤수")

// 매개변수를 받아 리턴값이 없는 클로저
let myRealNameLogic : (String) -> Void = { (name: String) in
    print("개발자 \(name)")
}

myRealNameLogic("윤수!")
