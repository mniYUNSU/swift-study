import UIKit

// MyPet struct 내에서만 사용
struct MyPet {
    private (set) var name : String = "이름 없음"
    var title: String = "타이틀없음"
    // struct 내에서 name 변수를 변경하려면 mutating 키워드 필요
    mutating func setName(to newName: String) {
        self.name = newName
    }
}

var myPet = MyPet()
myPet.name // 이름없음
myPet.title // 타이틀없음

// private 키워드가 없으면 (public) 이면 외부에서 접근 가능
myPet.title = "타이틀 있음"
myPet.title // 타이틀 있음

//myPet.name = "윤수"
//myPet.name // 접근 불가능 에러

// private 이기 때문에 직접 변경은 불가능, 메소드를 통한 접근으로 struct 내부에서 변경하는 것으로 변경 가능
myPet.setName(to: "윤수")
myPet.name // 윤수
