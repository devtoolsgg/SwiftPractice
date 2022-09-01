import UIKit
import Foundation


/*
 8강.
 
 조건문
 
 크게 if-else 문, switch문으로 구별된다.
 
 */

// 1. if-else

// 형태 :
//    if 조건절 {
//
//    }else if 조건절 {
//
//    }else {
//
//    }

var someInteger = 88
if someInteger < 100 {
    print("100 미만")
}else if someInteger > 100 {
    print("100 초과")
}else {
    print(someInteger)
}

// 조건절 에는 항상 Bool 타입이 들어와야 한다.
// if someInteger {} // Int 타입이라 불가

// 2. switch : 무조건 default 추가
//    형태 :
//    switch value {
//
//    case pattern:
//        code
//    default:
//        code
//    }


// 범위 연산자를 활용하면 유용하다
switch someInteger{
    case 0:
        print(0)
        fallthrough // 값 체크 후 break하지 않고 다음으로 동작
    case 1..<100:
        print("1~99")
        
    case 100:
        print(100)
        
    default:
        print("unknown")
}













