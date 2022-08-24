import UIKit

/*
 4강.
 Any, AnyObject, nil
 */


// Any :  Swift의 모든 타입을 지칭해 선언할때 사용 ()
var metamong: Any = 100
print(metamong)
metamong = "메타몽"
print(metamong)
metamong = 3.14
print(metamong)

//var inputDouble: Double = metamong // Any에서 선언한 값은 해당값의 적법한 다른타입으로의 할당이 불가하다
// 반대는 될까? ---> 반대의 케이스는 된다!
var inputDouble: Double = 3.14
var metamong2: Any = inputDouble
print(metamong2)


// AnyObject : Any의 클래스 버전...?
class MyClass {}
var tempClass: MyClass = MyClass() // 일반적인 클래스 선언방식
var anyTempClass: AnyObject = MyClass() // AnyObject를 사용한 클래스 선언 (부작용은 없을까)


// nil : 없음을 나타내는 것 ( = null)
// 쓰는 상황 : optional (아직안배움)

//var metamong3: String
//metamong3 = nil // 선언된 데이터 타입에는 빈값은 들어올수 없다.





