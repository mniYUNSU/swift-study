import UIKit

// 함수(메소드) 정의
func myFunction(name: String) -> String {
    return "안녕!! \(name) 입니다!"
}

// 함수(메소드) 호출
myFunction(name: "YUNSU")


// 함수(메소드) 정의
// with 을 통해
// name 을 받는데 with 로 받는다.
// 같은 메소드지만 이름을 바꿀 수 있다.
func myFunctionSecond(with name: String) -> String {
    return "안녕!! \(name) 입니다!"
}

myFunctionSecond(with: "윤수윤수")

// 언더바 활용
func myFunctionThird(_ name: String) -> String {
    return "안녕!! \(name) 입니다!"
}

myFunctionThird("배윤수~")

// 매개변수의 이름을 정한다.
// 이름을 변경할 수 있다.
// 이름을 넣기 싫으면 언더바를 사용하면 된다.
