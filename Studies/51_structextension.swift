import UIKit

struct Pet {
    var name: String
}

// struct 는 생성자 메소드가 자동 탑재되어 있음
// struct 안에서 생성자를 따로 지정 가능하지만
// extension 으로 빼서 기본 생성자 지정이 가능함

extension Pet {
    init(){
        name = "고양이"
    }
}

let myPet = Pet() // 고양이
let myCat = Pet(name: "강아지") // 강아지
