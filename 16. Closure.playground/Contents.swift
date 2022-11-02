import UIKit


/*
 16강.
 
 클로저 기본
 
 코드의 블럭을 말한다
 일급 시민 (first-citizen)
 변수, 상수 등으로 저장되며 파라미터로 전달 가능하다.
 함수는 이름이 있는 클로저이다
 
 
 형태 :
    { (파라미터목록)
            -> 반환타입 in 실행코드
    }
 
 */


// 함수 사용시
func sumFunction(a: Int, b: Int) -> Int{
    return a + b
}
var sumResult: Int = sumFunction(a: 1, b: 2)
print(sumResult)

// 위의 함수를 클로저로 표현할 수 있다.
var sum: (Int, Int) -> Int = {(a: Int, b: Int) -> Int in return a + b}
sumResult = sum(1,3)
print(sumResult)

// 함수는 클로저의 일종이기 때문에
// 클로저로 선언한 변수에 당연히 함수를 할당 할 수 있다.
sum = sumFunction(a:b:)
sumResult = sum(1,4)
print(sumResult)


// 클로저는 함수의 전달인자로도 많이 사용된다
// 클로저를 이용한 파라미터 내 메소드 만들기
let add: (Int,Int) -> Int
add = { (a: Int, b: Int) in return a+b}

let minus: (Int,Int) -> Int
minus = { (a: Int, b: Int) in return a-b}

let devide: (Int,Int) -> Int
devide = { (a: Int, b: Int) in return a/b}

// 함수 선언 (파라미터 내 클로저)
func calculate(a: Int, b: Int, method: (Int,Int) -> Int) -> Int{
    return method(a,b)
}

var calculateResult: Int

calculateResult = calculate(a: 50,b: 10, method: add)
print(calculateResult) // 60

calculateResult = calculate(a: 50,b: 10, method: minus)
print(calculateResult) // 40

calculateResult = calculate(a: 50,b: 10, method: devide)
print(calculateResult) // 5

// 메소드 내 클로저의 직접 사용
calculateResult = calculate(a: 50,b: 10, method: {
    (left: Int, right: Int) -> Int in return left * right
})

print(calculateResult) // 500
