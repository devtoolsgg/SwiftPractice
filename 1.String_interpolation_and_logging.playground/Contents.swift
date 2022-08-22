import UIKit

/*
 1강.
 문자열 보간법과 로그찍기
 */

// 문자열 보간법 : \()
let age: Int = 10
print("나는 \(age + 5)살 입니다") // -> "나는 15살 입니다"

/*
 로그찍기 : print(), dump()
  print는 대략적인 아웃풋, dump는 상세한 내용까지 출력
 */

class Person {
    var name: String = "gglee"
    var age: Int = 32
}

let gwanInfo: Person = Person()
print(gwanInfo)
dump(gwanInfo)
