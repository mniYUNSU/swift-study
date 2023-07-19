import UIKit

// 한 메모리 공간에 값을 올릴 수 있다.
 final class Pet {
    static let shared = Pet()
    private init() {}
    
    var name: String = "고양이"
}


Pet.shared.name = "강아지"
// myCat과 myDog 는 메모리 주소가 같아진다.
let myCat = Pet.shared
myCat.name
let myDog = Pet.shared
