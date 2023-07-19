import UIKit


// design pattern - builder
// creational - builder

// 만들어 주는 것을 만든다.
// 핵심은 자기 자신을 뱉는다.

struct Pet {
    var name: String? = nil
    var age: Int? = nil
}

class PetBuilder {
    private var pet : Pet = Pet()
    func withName(_ name: String) -> Self {
        pet.name = name
        return self
    }
    func withAge(_ age: Int) -> Self {
        pet.age = age
        return self
    }
    func build() -> Pet {
        return self.pet
    }
}

let myPet = PetBuilder().withName("헬로우").withAge(10).build()
myPet
