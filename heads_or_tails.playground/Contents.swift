import UIKit

func cointoss(){
    let coin = Int.random(in: 0..<2)
    if coin < 1 {
        print("Heads")
    }
    else{
        print("Tails")
    }
}
func tossmultiple(i: Int){
    var a = 0
    while a < i {
        cointoss()
        a = a + 1
    }
}
tossmultiple(i: 4)
