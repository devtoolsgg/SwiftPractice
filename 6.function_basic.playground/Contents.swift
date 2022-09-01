import UIKit



/*
 6강.
 
 함수 기초

 */



// 함수의 선언
// 기본형태 :
// func 함수이름(파라미터1이름: 파라미터1타입 ...) -> 반환타입 { 함수내용 = 반환값  return 반환값 }

func sumInt(a: Int, b: Int) -> Int{
    return a+b
}
 

// 반환값이 없는 함수 : 반환타입에 Void 선언

func printMessage (message: String) -> Void{
    print(message)
}


// 매개 변수 없는 함수
// 함수 내 함수 선언 가능
// Void는 아래 형태처럼 생략도 가능하다
func justPrint() {return printMessage(message: "i am justPrint")}




// 함수 호출해보기

sumInt(a: 1, b: 2)
printMessage(message: "재밌다 스위프트")
justPrint()




