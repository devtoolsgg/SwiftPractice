import UIKit

/*
 
 17강.
 클로저 응용
 
 이해하기 적당한 선에서 축약법을 사용하는 것이 중요하다.
 - 후행 클로저
 - 반환타입 생략
 - 단축 인자이름
 - 암시적 반환 표현
 
 */



func calculate(a: Int, b: Int, method: (Int,Int) -> Int) -> Int {
    return method(a,b)
}

var result: Int

// 1. 후행 클로저
//    클로저가 함수의 마지막 파라미터면 마지막 파라미터의 이름을 생략한 후
//    함수 소괄호외부에 클로저를 구현할 수 있다

result = calculate(a: 10, b: 20) { (left: Int, right: Int) -> Int in
    return left + right
}
print(result) // 30

// 2. 반환타입 생략
//    calculate의 method 매개변수는 Int타입을 반환한다는 것을 컴파일러가 알기 떄문에
//    굳이 클로저에서 반환타입을 명시해주지 않아도 된다.
//    대신 in 키워드는 생략할 수 없다


// 후행 클로저 + 반환타입 생략
result = calculate(a: 10, b: 20) { (left: Int, right: Int) in
    return left + right
}
print(result) // 30

// 3. 파라미터 이름 단축
//    클로저의 파라미터 이름이 불필요하다면 파라미터를 단축할 수 있다
//    파라미터 단축은 클로저의 파라미터 순서대로 $0, $1... 로 표현한다
result = calculate(a: 10, b: 20, method:  {
    return $0 + $1
})
print(result) // 30

// 후행 클로저 + 파라미터 이름 단축 + 반환타입 생략
result = calculate(a: 10, b: 20) {
    return $0 + $1
}
print(result) // 30


// 4. 암시적 return 표현
//    클로저가 반환하는 값이 있다면
//    클로저의 마지막 줄 결과값을 암시적으로 반환값으로 취급하는것

// 후행 클로저 + 파라미터 이름 단축 + 반환타입 생략 + 암시적 return
result = calculate(a: 10, b: 20) {
     $0 + $1
}
print(result) // 30

// 클로저 축약 전후 비교
// 너무 축약해서 쓰면 협업하기 곤란할수있으니 요령껏~후ㅂ
result = calculate(a: 10, b: 20) { (left: Int, right: Int) -> Int in
    return left + right
}

result = calculate(a: 10, b: 20) { $0 + $1 }
