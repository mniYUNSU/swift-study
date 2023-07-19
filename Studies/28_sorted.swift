import UIKit

// sort, sorted
var myArray = [3, 4, 55, 989, 10, 2, 1, 9]

// 정렬된 배열 반환 (오름차순)
var ascendingArray = myArray.sorted() // [1, 2, 3, 4, 9, 10, 55, 989]
// 정렬된 배열로 바뀜 (오름차순)
myArray.sort() // [1, 2, 3, 4, 9, 10, 55, 989]

var descendingArray = myArray.sorted(by: >) // [989, 55, 10, 9, 4, 3, 2, 1]
myArray.sort(by: >) // [989, 55, 10, 9, 4, 3, 2, 1]


