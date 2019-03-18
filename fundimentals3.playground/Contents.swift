import UIKit

var arr = [Int]()
var i = 0
while i < 256{
    arr.append(i)
    i = i + 1
}
arr.insert(Int(arc4random_uniform(256)), at: Int(arc4random_uniform(256)))
var shuffel = 1
while shuffel < 100 {
    arr.insert(Int(arc4random_uniform(256)), at: Int(arc4random_uniform(256)))
    shuffel = shuffel + 1
}
var a = 1
while a < arr.count{
    if arr[a] == 42{
        arr.remove(at: a)
        print("we found the answer at index \(a)")
    }
    a = a + 1
}
print(arr)



