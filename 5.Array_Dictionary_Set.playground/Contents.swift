import UIKit


/*
 5강.
 컬렉션 타입
 
 Array : index가 있는, 순서가 있는 list 형태의 컬렉션
 Dictionary : 순서없는 key-value 혈태의 컬렉션
 Set : 순서가 없고 멤버가 유일한 컬렉션 (집합개념 )
 
 */


// 1. Array

// 배열 선언
var myArray: Array<String> = Array<String>()
// 아래와 같은 방법으로 축약해서 사용한다.
//var myArray1: [String] = [String]()
//var myArray2: [String] = []


// 배열 추가 : .append()
// myArray.append(1) // 배열 초기화시 선언했던 타입으로만 추가 가능
myArray.append("감자")
myArray.append("고구마")
myArray.append("당근")
myArray.append("양파")

// 배열안에 요소 확인 : .contains()
myArray.contains("감자") // true
myArray.contains("사과") // false

// 배열 길이 : .count
myArray.count // 2

// 배열 내 값 삭제 - 빈 배열이면 삭제되지 않는다
myArray.remove(at: 0) // 0번째 인덱스 값 삭제
myArray.removeLast() // 마지막 값 삭제
myArray.removeFirst() // 첫번째 값 삭제
myArray.removeAll() // 전체 삭제
myArray // []

// let으로 배열 선언시 배열값에 대한 접근이 불가하다
let immutableArray = [1,2,3]
//immutableArray.append(4) // 값추가 불가능
// immutableArray.removeAll() // 삭제 불가능


// 2. Dictionary

// Key가 String이고 value가 Any 인 Dictionary를 생성해보자
var gglDictionary: Dictionary<String, Any> = [String:Any]()
var emptyDictionary: [String:Any] = [:] // 축약해서 선언
 
gglDictionary["mem_email"] = "lkk1234@gmail.com"
gglDictionary["password"] = 1234
gglDictionary

// 딕셔너리 값 제거
gglDictionary.removeValue(forKey: "password")
gglDictionary


//  딕셔너리를 선언하고 값에 접근할때 이런시나리오가 생긴다.
let sampleDic: [String:String] = ["name":"gglee","gender":"male"]
// let someVal: String = sampleDic["name"] // 에러가 뜬다. 딕셔너리에서 뽑은 값에 대한 보장을 요구하는것같다 (값에대한 불확실성)

// 3. Set

// 생성 - 축약문구 없다.
var myIntegerSet: Set<Int> = Set<Int>()

// 추가 .insert()
myIntegerSet.insert(1)
myIntegerSet.insert(100)
myIntegerSet.insert(99)
myIntegerSet.insert(99) // 이미 99라는 값이 들어가 있어서 추가 불가능

// 값 확인 : .contains()
myIntegerSet.contains(1) // true
myIntegerSet.contains(2) // false

// 값 삭제
myIntegerSet.remove(100)
myIntegerSet.removeFirst()

// 갯수 : .count
myIntegerSet.count

// 집합 응용

let setA: Set<Int> = [1,2,3,4,5]
let setB: Set<Int> = [3,4,5,6,7]

let unions: Set<Int> = setA.union(setB) // 합집합
let sorted: [Int] = unions.sorted() // 오름차순 정렬
let intersections: Set<Int>  = setA.intersection(setB)// 교집합
let subtracts: Set<Int> = setA.subtracting(setB)// 차집합




