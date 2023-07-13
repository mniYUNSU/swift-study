import UIKit

// 학교 - 초, 중, 고
enum School {
    case elementary
    case middle
    case high
    // or case elementary, middle, high 로 한 줄로 쓸 수 있음.
}

// 상수를 선언할 땐 let을 사용한다.
// 변수는 var로 선언한다.
let yourSchool = School.elementary
print("yourSchool : \(yourSchool)")
print("yourSchool : ", yourSchool)

enum Grade : Int {
    case first = 1
    case second = 2
}

let yourGrade = Grade.second
print("yourGrade : \(yourGrade)")
print("yourGrade : \(yourGrade.rawValue)")


enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    case high(name: String)
    
    func getName() -> String {
        switch self {
        case .elementary(let name):
            return name
        case let .middle(name):
            return name
        case let .high(name):
            return name
        }
    }
}

let yourMiddleSchoolName = SchoolDetail.middle(name: "YUNSU")
print(yourMiddleSchoolName.getName())
print(yourMiddleSchoolName)
