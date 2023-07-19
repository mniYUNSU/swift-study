import UIKit

let friends = ["철수", "영희", "짱구"]
let pets = ["고양이", "강아지"]

// 두 콜렉션을 묶고 싶을때 사용 - 크기가 같아질 때 까지
let friendAndPetPairs = zip(friends, pets)

for aPair in friendAndPetPairs {
    print("\(aPair.0), \(aPair.1)")
//    철수, 고양이
//    영희, 강아지
}
