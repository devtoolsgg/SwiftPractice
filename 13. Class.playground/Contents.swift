import UIKit
import Security


/*
 13강
 클래스
 
    구조체와 비슷하나 다른점이 있다.
    구조체는 값 타입인 반면에 클래스는 참조타입이다.
    클래스는 다중상속이 되지 않는다.
 
    형태 :
        class 이름 { }
 */


// 선언
class Sample {
    
    
    // * 인스턴스 프로퍼티 : 구조체 내 들어가는 변수 (인스턴스)
    var mutableProperty: Int = 100 // 가변 프로퍼티
    let immutableProperty: Int = 100 // 불변 프로퍼티
    
    // * 인스턴스 메서드 : 구조체 내 들어가는 함수
    func instanceMethod() {
        print("i am instance method")
    }
        
    
    
    // * 타입 프로퍼티 : 구조체 타입일때 호출할 수 있는 프로퍼티
    static var typeProperty: Int = 100
    
    
    // * 타입 메서드 : 구조체 타입일때 호출할 수 있는 메서드
    
    
    // 클래스는 타입 메서드가 두가지로 구분된다
    // 상속을 받아 활용할떄 재정의가 불가능한 static 과
    // 재정의가 가능한 class
    static func typeMethod() {
        print("type method - static")
    }
    
    class func classMethod() {
        print("type method - class")
    }
}

// 클래스의 사용
// 구조체와 다르게 인스턴스를 생성해서 사용할때
// 인스턴스의 형태(var or let)과 관련없이 내부 프로퍼티(가변)에 대한 접근이 가능하다

var mutableClass: Sample = Sample()
mutableClass.mutableProperty = 100
//mutableClass.immutableProperty = 100 // 불변 프로퍼티라 접근불가

let immutableClass: Sample = Sample()
immutableClass.mutableProperty = 100
//immutableClass.immutableProperty = 100 // 불변 프로퍼티라 접근불가


// 타입 프로퍼티 , 타입 메서드 사용
Sample.typeMethod()
Sample.typeProperty = 200


class Student {
    
    var name: String = "unknown"
    var language: String = "Swift"
    
    static func introduce() {
        print("학생입니다만")
    }
    
    func introduce(){
        print("저는 \(self.name)입니다 \(self.language)를 공부해요")
    }
}


Student.introduce() // 학생입니다만

var gglee: Student = Student()
gglee.name = "gglee"
gglee.language = "서위프트"
gglee.introduce() // 저는gglee입니다 서위프트를 공부해요


let metamong: Student = Student()
metamong.name = "메타몽"
metamong.introduce() // 저는 메타몽입니다 Swift를 공부해요

