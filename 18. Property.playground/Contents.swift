import UIKit

/*
 
 18강.
 
 프로퍼티
 
 종류 :
 
 - 저장 프로퍼티
 - 연산 프로퍼티
 - 타입 프로퍼티
 
 
 프로퍼티는 구조체, 클래스, 열거형 내부에 구현한다.
 다만 열거형 내부에는 연산 프로퍼티만 구현 가능하다
 연산 프로퍼티는 var로만 선언 가능
 
 */


struct Student {
    
    // 인스턴스 저장 프로퍼티
    var name: String = ""
    var study: String = "Swift"
    var koreanAge: Int = 30
    
    // 인스턴스 연산 프로퍼티
    var westernAge: Int {
        
        get{
            return koreanAge - 1
        }
        
        set(inputValue) {
            koreanAge = inputValue + 1
        }
    }
     
    
    // 타입 저장 프로퍼티
    static var typeDescription: String = "학생"
    
    
    // 인스턴스 메서드
    func selfIntroduce() {
        print("저는 \(self.study)반 \(self.name)입니다")
    }
    
    // 읽기 전용 인스턴스 연산 프로퍼티
    // 위처럼 반환값이 없는 메서드를 대처할 수 있다
    var selfIntroduction: String {
        
        get {
            return "저는 \(self.study)반 \(self.name)입니다"
        }
    }
    
    // 타입 메서드
    static func selfIntroduce(){
        print("학생입니다만")
    }
    
    // 읽기 전용 타입 연산 프로퍼티
    static var selfIntroduction: String{
        return "학생입니다만"
    }
}

// 사용
print(Student.selfIntroduction) // 학생입니다만

// 인스턴스 생성
var gglee: Student = Student()
gglee.koreanAge = 31

// 인스턴스 저장 프로퍼티 사용
gglee.name = "gwan"
print(gglee.name) // gwan

// 인스턴스 연산 프로퍼티 사용
print(gglee.selfIntroduction) // 저는 Swift반 gwan입니다

print("my korean age is \(gglee.koreanAge) and western age is \(gglee.westernAge)")


struct Money {
    var currentRate: Double = 1100
    var dollar: Double = 0
    
    var won: Double {
        
        get{
            print("getter dollar : \(dollar) * currentRate : \(currentRate) = \(dollar*currentRate)")
            return dollar * currentRate
        }
        
        set{
            print("setter newValue : \(newValue) / currentRate : \(currentRate) = \( newValue / currentRate )")
            dollar = newValue / currentRate // 매개변수 특별히 없으면 암시적으로 newValue로 지정된다
        }
         
    }
}

var myMoney = Money()

myMoney.won = 10000
print(myMoney.won)

myMoney.dollar = 10
print(myMoney.won)



// 저장 프로퍼티와 연산 프로퍼티의 기능은
// 함수, 메서드, 클로저, 타입등의 외부에 위치한
// 지역,전역 변수에도 모두 사용이 가능하다

var a: Int = 100
var b: Int = 200
var sum: Int {
    return a+b
}
print(sum) // 300




class Hero {
    //static let name: String // static 으로 선언할 경우 무조건 초기화 해야한다.
    static let name: String = "IronMan"
    
    static var overrideImpossible: String {
        return "i am..." + name
    }
    class var overridePossible: String {
        return "i am..." + name
    }
}


class Stark: Hero {
    
    override class var overridePossible: String {
        return "override complete"
    }
}

Hero.overridePossible
Stark.overridePossible
