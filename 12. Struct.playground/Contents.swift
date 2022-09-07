import UIKit



/*
 
 12강.
 구조체
 
 형태 :
    struct 이름 { }
 
 
 */


// 구조체 선언
struct Sample {
    
    // * 인스턴스 프로퍼티 : 구조체 내 들어가는 변수 (인스턴스)
    var mutableProperty: Int = 100 // 가변 프로퍼티
    let immutableProperty: Int = 100 // 불변 프로퍼티
    
    // * 인스턴스 메서드 : 구조체 내 들어가는 함수
    func instanceMethod() {
        print("i am instance method")
    }
        
    
    
    // static :
    
    // * 타입 프로퍼티 : 구조체 타입일때 호출할 수 있는 프로퍼티
    static var typeProperty: Int = 100
    
    
    // * 타입 메서드 : 구조체 타입일때 호출할 수 있는 메서드
    static func typeMethod() {
        print("i am type method")
        
    }
}

// 구조체 사용

var mutableStruct: Sample = Sample() // 구조체 인스턴스 생성

mutableStruct.mutableProperty = 100
//mutableStruct.immutableProperty = 100 // 구조체 내 프로퍼티가 let이라 변경불가


let immutableStruct: Sample = Sample()
//immutableStruct.mutableProperty = 100 // 구조체가 let으로 선언 돼 변경불가
//immutableStruct.immutableProperty = 100 // 구조체 내 프로퍼티가 let이라 변경불가

// 구조체 타입 프로퍼티 및 메서드 사용
Sample.typeProperty = 100
Sample.typeMethod() // "i am type method"


struct Student {
    
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
// metamong.name = "메타몽" // 변경불가
metamong.introduce() // 저는 unknown입니다 Swift를 공부해요





