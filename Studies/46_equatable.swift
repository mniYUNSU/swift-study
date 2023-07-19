import UIKit

// equatable protocol
// struct 간 비교 가능하도록 만들어준다.
struct Pet : Equatable {
    let id: String
    let name: String
    // 같은지 체크
    static func == (lhs: Pet, rhs: Pet) -> Bool {
        return lhs.id == rhs.id
    }
    static func != (lhs: Pet, rhs: Pet) -> Bool {
        return lhs.id != rhs.id
    }
}

let myPet1 = Pet(id: "01", name: "고양이")
let myPet2 = Pet(id: "02", name: "강아지")
let myPet3 = Pet(id: "01", name: "냥이")

if myPet1.id == myPet3.id {
    print("같은 Pet")
}

if myPet1 == myPet3 {
    print("같은 Pet임")
}

if myPet1 != myPet2 {
    print("다른 Pet임")
}
