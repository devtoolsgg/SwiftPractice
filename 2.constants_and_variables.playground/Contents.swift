import UIKit

/*
 2강.
 상수와 변수
 */



/*
 상수 : 선언, 초기화 후 값이 변하지 않는다
 선언 방식 :
 
 let 이름: 타입 = 값
 */
let constant: String = "정상수"
print(constant)
//constant = "테이저건" // 에러발생 (상수 변경불가)
 

/*
 변수 : 선언, 초기화 후 다른값을 계속 할당 가능
 선언 방식 :
 
 var 이름: 타입 = 값
 */

var variable: String = "장이수"
print(variable) // 장이수
variable = "내아임다"
print(variable) // 내아임다


/*
 상수와 변수는 선언 후 값을 나중에 할당할 수 있으나
 꼭 타입을 명시해야한다. 
 */
let sum: Int
let numA: Int = 100
let numB: Int = 200

//print(sum) // 선언만해놓고 할당하지 않아 에러 발생
sum = numA + numB
print(sum) // 300
