import UIKit

func someFunctionWithClosures(first: () -> Void, second: (String) -> Void, third: (Int) -> Void) {
    first()
    second("하이")
    third(3)
}

someFunctionWithClosures(first: {print("첫번째")}, second: {print("두번째 \($0)")}, third: {print("세번째 \($0)")})

someFunctionWithClosures {
    print("first")
} second: { string in
    print("second \(string)")
} third: { number in
    print("third \(number)")
}


