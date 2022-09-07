import UIKit


/*
 
 15강
 
 값 타입과 참조 타입의 비교
    Class vs Struct/Enum
 
 */

// struct 는 값 타입
struct ValueType {
    var property = 1
}

let firstStructInstance = ValueType()
var secondStructInstance = firstStructInstance
//firstStructInstance.property = 2 // 프로퍼티 접근 불가 (struct)
secondStructInstance.property = 2
print("first struct instance property : \(firstStructInstance.property)") // 1
print("second struct instance property : \(secondStructInstance.property)") // 2




// class는 참조 타입
class ReferenceType {
    var property = 1
}

let firstClassReference = ReferenceType()
var secondClassReference = firstClassReference

// 두 인스턴스 모두 Class타입의 ReferenceType 를 참조하고 있기 때문에
// 두 인스턴스 중 하나의 프로퍼티에 접근만 하면 클래스 내 모든 값이 바뀐다
firstClassReference.property = 2
secondClassReference.property = 3
print("first class instance property : \(firstClassReference.property)") // 3
print("second class instance property : \(secondClassReference.property)") // 3




// 테스트 1
struct SomeStruct {
    var property = "프로퍼티~~"
}
var someStructInstance: SomeStruct = SomeStruct()

func someStructFunc(structInstance: SomeStruct){
    var localVal:SomeStruct = structInstance
    localVal.property = "property~~"
    print(localVal.property)
}

// 값 변경 함수를 실행해도 변경되지 않는다.
someStructFunc(structInstance: someStructInstance) // property~~
print(someStructInstance.property) // "프로퍼티~~"

// 테스트 2
class SomeClass {
    var property = "프로퍼티~~"
}
var someClassInstance: SomeClass = SomeClass()

func someClassFunc(classInstance: SomeClass){
    var localVal:SomeClass = classInstance
    localVal.property = "property~~"
    print(localVal.property)
}

// 값 변경 함수를 실행하면 참조값에 접근해 값을 변경한다
someClassFunc(classInstance: someClassInstance) // property~~
print(someClassInstance.property) // "property~~"
