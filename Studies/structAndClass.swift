import UIKit

// 유튜버 모델 - struct(구조체)
struct YoutuberStruct {
    var name : String
    var subscriberCount : Int
}

var yunsu = YoutuberStruct(name: "yunsu", subscriberCount: 1000)
var yunsuClone = yunsu

print("값 넣기 전 yunsuClone.name : \(yunsuClone.name)")
print("값 넣기 전 yunsu.name : \(yunsu.name)")

yunsuClone.name = "윤수"

// 복사한 구조체와 기존 구조체와 값이 다르다.
print("값 넣은 후 yunsuClone.name : \(yunsuClone.name)")
print("값 넣은 후 yunsu.name : \(yunsu.name)")

// 클래스는 변수들의 모음이다. but 생성자를 넣어야 함.
// 즉 생성자를 통해 메모리에 올려야 함
class YoutuberClass {
    var name : String
    var subscriberCount : Int
    // 생성자 - 메모리에 올린다.
    // 외부에서 넣은 데이터로 생성자를 통해 변수를 초기화해야 함.
    // init 으로 매개변수를 가진 생성자 메소드를 만들어야 함
    // 매개변수를 넣어서 그 값을 가진 객체를 만들 수 있다.
    init(name: String, subscriberCount: Int){
        self.name = name
        self.subscriberCount = subscriberCount
    }
}

var yunsuClass = YoutuberClass(name: "yunsuClass", subscriberCount: 10000)
var yunsuClassClone = yunsuClass

print("값 넣기 전 yunsuClassClone.name : \(yunsuClassClone.name)")
print("값 넣기 전 yunsuClass.name : \(yunsuClass.name)")

yunsuClassClone.name = "윤수클래스"

// 같은 값이 나온다.
// struct 는 새롭게 복사하는 것. 복사한 객체에 영향이 없다.
// class 는 복사하더라도 같은 메모리 공간 위치를 참조한다. 연결되어 있다.
print("값 넣은 후 yunsuClassClone.name : \(yunsuClassClone.name)")
print("값 넣은 후 yunsuClass.name : \(yunsuClass.name)")


