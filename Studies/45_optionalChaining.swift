import UIKit

struct Friend {
    let nickname: String
    let person: Person?
}

struct Person {
    let name: String
    let pet: Pet?
}

struct Pet {
    let name: String?
    let kind: String
}

let pet = Pet(name: "냥냥", kind: "고양이")
let person = Person(name: "윤수", pet: pet)
let friend = Friend(nickname: "mni", person: nil)

// 데이터가 있을 수 있고 없을 수 있다.

// 옵셔널 체이닝
if let petName = friend.person?.pet?.name{
    print("petname \(petName)")
} else {
    print("petname 없음") // petname 없음
}

func getPetName() {
    guard let petName = friend.person?.pet?.name else {
        print("petname 없음")
        return
    }
    print("petname \(petName)")
}

getPetName() // petname 없음

// 옵셔널 바인딩
//if let person = friend.person, let pet = person.pet, let petName = pet.name {
//    // 모든 데이터가 존재함
//    print("petName \(petName)")
//} else {
//    print("데이터 없음")
//}

//if let person: Person = friend.person {
//    if let pet = person.pet {
//        if let petName = pet.name {
//            print("petname : \(petName)") // petname : 냥냥
//        } else {
//            print("no petname")
//        }
//    }
//}
