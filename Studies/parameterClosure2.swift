import UIKit

// () -> Void 형태
// func completion(){}

// 클로저(completion)를 매개변수로 가지는 메소드의 정의
func sayHi(completion: () -> Void){
    print("sayHi called")
    sleep(2) // 2초 멈추기
    // 클로저(completion) 실행
    completion()
}

// 메소드 호출 부분 에서 이벤트 종료를 알 수 있다.
sayHi(completion: {
    print("2초가 지났다! 1")
})

sayHi(){
    print("2초가 지났다! 2")
}

sayHi{
    print("2초가 지났다! 3")
}


// (String) -> Void 형태
// func completion(name: String){}

// 매개변수로서 데이터를 반환하는 클로저
func sayHiWithFullName(completion: (String, String) -> Void){
    print("sayHiWithFullName called")
    sleep(2)
    // 클로저 실행과 동시에 데이터를 리턴한다.
    completion("오늘도 열심히 하고 있나요?", "으하하항")
}

sayHiWithFullName(completion: {
    (comment: String, say: String) in
    print("2초 뒤에 말했다. comment : \(comment) second \(say)")
})

sayHiWithFullName(completion: {
    comment, second in
    print("2초 뒤에 말했다. comment : \(comment) second \(second)")
})

sayHiWithFullName{ comment, second in
    print("2초 뒤에 말했다. comment : \(comment) second \(second)")
}

// 매개변수 언더바는 생략이라는 의미임
sayHiWithFullName{ _, second in
    print("2초 뒤에 말했다. second \(second)")
}

sayHiWithFullName{
    print("2초 뒤에 말했다. comment : \($0) second \($1)")
}


// (String, String) -> Void 형태
// func completion(first: String, second: String){}

// 옵셔널 클로저 할당 가능
func sayHiOptional(completion: (() -> Void)? = nil){
    print("sayHiOptional called")
    sleep(2)
    // 클로저 실행과 동시에 데이터를 리턴한다.
    completion?()
}

sayHiOptional()
sayHiOptional(completion: {
    print("옵셔널 큭큭큭 2초 지났다")
})



// (Int) -> String 형태
// func transform(number: Int) -> String {
//    return "숫자 : \(number)"
// }

var myNumbers : [Int] = [0,1,2,3,4,5]

var transformedNumbers = myNumbers.map { aNumber in
    return "숫자 : \(aNumber)"
}

var transformedNumbers2 = myNumbers.map {
    return "숫자 : \($0)"
}

print(transformedNumbers)
