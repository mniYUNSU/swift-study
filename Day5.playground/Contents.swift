import UIKit

var someVariable : Int? = nil

// 값이 비어있다면 변수에 값을 넣는다.
if someVariable == nil {
    someVariable = 90
}

print("someVariable: ", someVariable)

// 언랩핑
// 감싸져있는 것을 벗기는 것. 옵셔널이라는 감싸진 것을 벗겨주는 것.

// 값이 있다면 otherVariable 에 값을 할당한다.
// 옵셔널이 사라진다.
if let otherVariable = someVariable {
    print("언래핑 되었다. 즉 값이 있다. otherVariable : \(otherVariable)")
} else {
    print("값이 없다.")
}

someVariable = nil

// someVariable이 비어있으면 기본값을 할당할 수 있다.
let myValue = someVariable ?? 10
print("myValue : \(myValue)")

var firstValue : Int? = 30
var secondValue : Int? = 50

print("firstValue : \(firstValue)")
print("secondValue : \(secondValue)")

unwrap(firstValue)
unwrap(secondValue)

// 가드렛
func unwrap(_ parameter: Int?){
    print("unwrap() called")
    // 값이 없으면 리턴
    guard let unWrappedParam = parameter
    else {
        return
    }
    print("unWrappedParam : \(unWrappedParam)")
}
