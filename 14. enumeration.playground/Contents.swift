import UIKit


/*
 
 14강
 
 열거형
 
 
    enum은 타입이므로 대문자 카멜케이스를 사용해 이름을 정의합니다
    각 case는 소문자 카멜케이스로 정의한다
    각 case는 그 자체가 고유의 값이다
 
 
    형태 :
        enum 이름 {
            case 이름1
            case 이름2
            case 이름3, 이름4, 이름5 ...
        }
 */



// enum 사용하기
enum Week {
    
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

var day: Week = Week.mon
print(day) // mon
day = .tue // 열거형의 축약
print(day) // tue

// 열거형은 switch 문과 많이 쓰인다.
switch day {
    
case .mon, .tue, .wed, .thu:
    print("평일 극혐")
case .fri:
    print("불금 on")
case .sat, .sun:
    print("신성한 주말")
}


// 원시값 (rawValue)
// C언어의 enum처럼 정수값을 가지게 할 수 있다.
enum Fruit: Int{
    case apple = 0
    //case mango = 0 // case 별로 다른 값을 가져야 한다.
    case grape = 1
    case peach
}
// 원시값 꺼내기
print("apple rawValue is : \(Fruit.apple.rawValue)")

// 정수타입 뿐 아니라 Hashable 프로토콜을 따르는 모든 타입이
// 원시값의 타입으로 지정 될 수 있다.
enum School: String{
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case university
}

print("school middle rawValue is : \(School.middle.rawValue)")
//School.middle.rawValue = "중딩" // enum 내 case는 불변
print("school university rawValue is : \(School.university.rawValue)") //값 미지정시 case명 그대로를 가져온다 school university rawValue is : university



// 원시값을 통한 초기화

// rawValue를 통해 초기화 할 수 있다.
// rawValue가 case에 해당하지 않을 수 있으므로
// rawValue를 통해 초기화 한 인스턴스는 옵셔널 타입이다.

//let apple: Fruit = Fruit(rawValue: 0) // 컴파일에러 - 옵셔널
let apple: Fruit? = Fruit(rawValue: 0)

if let what: Fruit = Fruit(rawValue: 2){
    print("해당하는 케이스는 \(what)입니다")
}else{
    print("그런거 없는디")
}


// enum 내 메서드
enum Month {
    case dec,jan,feb
    case mar,apr,may
    case jun,jul,aug
    case sep,oct,nov
    
    func printSeason(){
        
        switch self{
        case .mar, .apr, .may:
            print("봄입니다")
        case .jun, .jul, .aug:
            print("여름입니다")
        case .sep, .oct, .nov:
            print("가을입니다")
        case .dec, .jan, .feb:
            print("겨울입니다")
        }
    }
    
}

Month.may.printSeason() // 봄입니다

    
    
    
    
    
    

