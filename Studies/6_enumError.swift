import UIKit

// 자료형 : Error
enum MismatchError : Error {
    case nameMismatch
    case numberMismatch
}

// throw 로 에러를 밖으로 던진다.
func guessMyName(name input: String) throws {
    print("guessMyName() called")
    
    if input != "배윤수" {
        print("틀렸다")
        throw MismatchError.nameMismatch
    }
    
    print("맞다")
}

// 에러처리를 해야한다면 메소드 앞에 try 를 붙여야 한다.
// 에러처리 추가 로직을 수행하지 않겠다면 try 뒤에 ? 를 붙이면 된다.
// try 뒤에 !를 붙이면 에러가 없을 것이라 확신한다. 에러가 있다면 코드 상에 에러가 발생하게 된다.
// try? guessMyName(name: "윤수")
// try! guessMyName(name: "윤수")

do {
    try guessMyName(name: "윤수")
} catch {
    print("ERROR : \(error)") // ERROR : nameMismatch
}


// alt cmd / -> 주석 만들기

/// 번호를 맞추는 메소드
/// - Parameter input: 사용자 숫자 입력
/// - Returns: bool 맞췄는지 여부
func guessMyNumber(number input: Int) throws -> Bool {
    print("guessMyNumber() called")
    
    if input != 10 {
        print("틀렸다")
        throw MismatchError.numberMismatch
    }
    
    print("맞다")
    return true
}

do {
    let receivedValue = try guessMyNumber(number: 1)
} catch {
    print("ERROR : \(error)") // ERROR : numberMismatch
}
