import UIKit

var str = "Hello, playground"

var i = 1
while i < 256 {
    print(i)
    i = i + 1
}

var a = 1
while a < 101 {
    if a % 3 == 0 || a % 5 == 0{
        print(a)
    }
    if a % 3 == 0 && a % 5 == 0{
    }
    a = a + 1
}

var b = 1
while b < 101{
    if b % 3 == 0{
        print("Fizz")
    }
    if b % 5 == 0{
        print("Buzz")
    }
    if b % 3 == 0 && b % 5 == 0{
        print("FizzBuzz")
    }
    b = b + 1
}
