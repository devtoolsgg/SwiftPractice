import UIKit

/*
 7강.
 
 함수 고급편
 
 */



// 1. 함수는 기본값을 갖는 파라미터를 사용할 수 있다, 파라미터의 기본값을 지정할거면 맨 뒤에 지정하는것이 좋다
// 형태 :
// func 함수명 (파라미터1:타입, 파라미터2:타입 = 파라미터 기본값 ...) -> 반환타입 { return 반환값 }

func greetingNames(friend: String, me: String = "gglee") {
    print ("hello \(friend), i am \(me)")
}
greetingNames(friend: "john")
greetingNames(friend: "john", me: "kklee") // 이렇게 하는 이유가 있을까 ..?


// 2. 파라미터 레이블
// 함수를 호출할때 파라미터의 역할 좀 더 명확하게 하거나
// 함수 사용자입장에서 표현하고자 할때 사용한다

// func 함수명(파라미터레이블 파라미터: 타입, 파라미터레이블 파라미터: 타입 ...) -> 반환타입 { return 반환값 }
func lableParams(la friend: String, ble me: String){
    print("hello \(friend) i am \(me)")
}
lableParams(la: "jackson", ble: "devtools")


// 3. 가변 파라미터 ( ... )
// 전달 받을 값의 개수를 알기 어려울 때 사용한다.
// 가변 파라미터는 함수당 한개만 가질 수 있고 맨 뒤에 위치한다.
// 형태 :
// func 함수명(파라미터1: 타입, 파라미터2: 타입 ...) -> 반환타입 { return 반환값 }

func threeDotsParam(me: String, friends: String ...) -> String{
    return "hello \(friends) i am \(me)"
}
print(threeDotsParam(me: "GGL", friends: "a","b","c"))
print(threeDotsParam(me: "GGL"))


// 스위프트는 함수형 프로그래밍 패러다임을 포함하는 언어
// 함수는 1급 객체이다. 변수나 상수로 저장가능하며 매개변수를 통해 전달이 가능하다


// 함수의 타입표현으로 변수화, 타입이 다르면 할당할 수 없다
// 형태 :
// var 변수명: (파라미터1타입, 파라미터2타입) -> 반환타입 = 함수명(파라미터1,파라미터2)
var myFunc: (String,String) -> Void = greetingNames(friend:me:)
myFunc("a", "b") // hello a, i am b


// 파라미터 내 함수 선언도 가능하다
func funcInParams(funcParams : (String, String) -> Void){
    funcParams("world", "swift")
}

funcInParams(funcParams: greetingNames(friend:me:))
funcInParams(funcParams: myFunc)


