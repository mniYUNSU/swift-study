import UIKit

// 매개변수로 함수 또는 클로저를 받고 받았던 매개변수를 반환한다.
func getName(_ name: String) -> String {
    return "내 이름은 \(name)"
}

var getNameClosure : (String) -> String

// 매개변수 getName 클로저를 받고 getName 을 리턴한다.
func sayHello( getName : (String) -> String, name : String) -> String {
    return getName(name)
}

let result1 = sayHello(getName: getName(_:), name: "윤수") // "내 이름은 윤수"

let numbers = [3, 1, 10, -1, 4]
let stringNumbers : [String] = numbers.map { (aNumber: Int) -> String in
    return "\(aNumber)"
} // (5 elements) ["3", "1", "10", "-1", "4"]

let evenNumbers : [Int] = numbers.filter { (aNumber: Int) in
    return aNumber % 2 == 0
} // (2 elements) [10, 4]


