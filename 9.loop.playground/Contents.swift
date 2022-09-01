import UIKit



/*
 9강.
 
 반복문
 
 - for-in
 - while
 - repeat-while
 
 주로 컬렉션타입들과 많이 사용한다.
 */




var integers = [1,2,3]
let peopleAges = ["kim": 20, "lee": 30, "park": 40]


// 1. for-in
// 형태 :
// for item in items {
//    code
//}
 
for a in integers {
    print(a)
}

for (name,age) in peopleAges {
    
    print("\(name) > \(age) olds")
}

// 2. while
// 형태 :
//    while condition {
//      code
//    }

while integers.count > 1 {
    integers.removeLast()
}
integers

// 3. repeat-while
// do-while과 같은 형태, 스위프트에서는 do는 다른 곳에 쓴다
// 형태 :
//    repeat {
//      code
//    } while condition
repeat {
    integers.removeLast()
}while integers.count > 0
integers
