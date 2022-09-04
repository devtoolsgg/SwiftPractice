import UIKit


/*
 10강.
 
 옵셔널
 
 */


// 1. 암시적 추출 옵셔널 (!)

var opVal: Int! = 100
switch opVal {
    case .none:
        print("this optional val is nil")
    case .some(let value):
        print("value is \(value)")
//    default:
//        print("hello")
}

 
opVal = opVal + 1 //기존 변수처럼 사용가능
opVal = nil //nil 할당 가능
// opVal = opVal + 1 //잘못된 접근으로 인한 런타임 오류 발생


// 2. 일반 옵셔널 (?)
var normalOpVal: Int? = 100 // int 가 있을수도 없을수도 있다.
switch normalOpVal {
    case .none:
        print("this optional val is nil")
    case .some(let value):
        print("value is \(value)")
//    default:
//        print("hello")
}
//normalOpVal = normalOpVal + 1 // 기존 변수처럼 사용불가 - 옵셔널과 일반값은 다른타입이므로 연산불가
normalOpVal = nil // nil할당 가능

