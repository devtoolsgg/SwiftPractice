import UIKit

/*
 11강.
 
 옵셔널 추출
 
 옵셔널 추출은 크게 옵셔널 바인딩과 강제 추출이 있다.
 
 */




//    1. 옵셔널 바인딩
//    옵셔널 값을 꺼내오는 방법중 하나
//    nil 체크 + 안전한 값 추출

func printName(_ name: String){ // 파라미터 내 _ 는 무엇을 의미하나 : Swift는 함수 호출시 넘기는 파라미터 앞에 라벨을 생략하기 위해 _ 를 사용한다.

    print(name)
    
}
var myName: String? = nil // 옵셔널 타입
// printName(myName) // 전달되는 값의 타입이 다르기 때문에 컴파일에러

// 위와 같은 상황 때문에 옵셔널 추출은
// if-let으로 추출한다.

if let name: String = myName{
    printName(name)
}else{
    print("myName == nil")
}

var gglName: String? = "GGLEE"
var yourName: String? = nil

if let name = gglName, let friend = yourName {
    print("\(name) and \(friend)")
} else {
    print("something is nil...")
}
 
yourName = "hana"

if let name = gglName, let friend = yourName {
    print("\(name) and \(friend)")
} else {
    print("something is nil...")
}


// 2. 옵셔널 강제 추출 방식 (! 사용) - 추천되는 방식은 아님

printName(gglName!) // GGLEE
gglName = nil
// printName(gglName!) // 강제 추출시 값이 없으므로 런타임 에러 발생

var testVal: String! = nil
// printName(testVal) // nil 값이 전달되기 때문에 런타임에러 발생
