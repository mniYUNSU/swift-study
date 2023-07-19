import UIKit

let numbers = [1,1,1,5,5,9,7]

// list -> set
let uniqueNumbers = Set(numbers)
uniqueNumbers // {7, 5, 1, 9}

// set 을 리스트로 정렬
var uniqueNumbersArranged = Array(uniqueNumbers) // [5, 7, 9, 1]
uniqueNumbersArranged.sort() // [1, 5, 7, 9]
