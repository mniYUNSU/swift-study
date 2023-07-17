import UIKit

func sayName(_ name: String) {
    print("안녕 \(name) !")
}

func sayHi(_ name: inout String) {
    name = "스위프트하는 " + name
    print("안녕 \(name) !")
}

sayName("윤수") // 안녕 윤수 !

var name = "배윤수"
sayHi(&name) // 안녕 스위프트하는 배윤수 !
