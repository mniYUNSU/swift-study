import UIKit

// collection : 데이터를 모아둔 것
// 배열, Set, Dictionary
var array : [Int] = [0,1,2,3,4,5,6,7,8,9,10]

// forEach
for item in array {
    print("item : \(item)")
}

// 조건 설정
for item in array where item > 5 {
    print("5보다 큰 수 : \(item)")
}

for item in array where item % 2 == 0 {
    print("짝수 : \(item)")
}
