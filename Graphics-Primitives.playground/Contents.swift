import UIKit

struct point{
    var x: Double = 0
    var y: Double = 0
}
struct line{
    var start: point
    var end: point
    func length(thisline: line){
        let len = thisline.start.x - thisline.end.x
        print(len)
    }
}
struct triangle {
    var points = [point]()
}

