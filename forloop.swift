import UIKit

// range 0...5
// 0,1,2,3,4,5 까지

// range 0..<5
// 0,1,2,3,4
for i in 0...5 {
    print(i) // 0,1,2,3,4,5
}

for i in 0..<5 {
    print(i) // 0,1,2,3,4
}

for i in 0..<5 where i % 2 == 0 {
    print(i) // 0,2,4
}

// 빈 배열을 만드는 방법
//var randomInts : [Int] = []
var randomInts : [Int] = [Int]()

for _ in 0..<25 {
    // 랜덤한 숫자
    let randomNumber = Int.random(in: 0...100)
    // randomInts 에 랜덤한 숫자 넣기
    randomInts.append(randomNumber)
}

print("randomInts: \(randomInts)") // 랜덤한 숫자 25개인 배열
