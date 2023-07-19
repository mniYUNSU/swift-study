import UIKit

class Cat {}
class Dog {}

let myCat = Cat()
let myDog = Dog()

if myCat is Cat {
    print("고양이다")
}

func checkIfSheIsCat () {
    guard myCat is Cat else {
        print("고양이가 아니다")
        return
    }
    print("고양이다")
}

checkIfSheIsCat()

switch myCat {
case is Cat:
    print("고양이다")
default :
    print("고양이 아니다")
}

if case is Cat = myCat {
    print("고양이다")
}

func checkIfSheIsDog(){
    guard case is Dog = myDog else {
        print("강아지가 아니다")
        return
    }
    print("강아지다")
}

checkIfSheIsDog()
