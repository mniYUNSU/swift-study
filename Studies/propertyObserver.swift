import UIKit

var myAge = 0 {
    willSet{
        print("값이 설정될 예정임. / myAge : \(myAge)")
    }
    didSet{
        print("값이 설정됨. / myAge : \(myAge)")
    }
}

myAge = 20
