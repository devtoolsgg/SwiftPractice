import UIKit

/*
 3강.
 데이터 타입
 
 
 Swift 의 기본 데이터 타입은 다음과 같다
 
 Bool, Int, Uint, Double, Float, Character, String
 
 
 */

// Boolean : 참, 거짓
var boolVal: Bool = false
print(boolVal) // false
print(!boolVal) // true

// Int, UInt
//Int : 정수 타입
//UInt : 부호가 없는 정수타입 (음수 불가)
var numInt: Int
numInt = 100
numInt = -100

var numUInt: UInt
numUInt = 100
// numUInt = -100 // 타입 불가

// Flaot, Double
//Float : 32 bit

//Double : 64 bit
var valFloat: Float = 3.14
print(valFloat)

var valDouble: Double = 3.14
print(valDouble)
// valFloat = valDouble // 타입 불가

// Character, String
//Character : 문자 1개, 유니코드 사용
//String : 문자열

var oneWord: Character = "p" // 한글자
var sentence:  String = "paul"
print(sentence + " barset")
