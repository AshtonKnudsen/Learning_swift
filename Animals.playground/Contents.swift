import UIKit

class animal{
    var name: String
    var health: Int
    init(name: String, health: Int) {
        self.name = name
        self.health = 100
    }
    func checkhealth(){
        print(self.health)
    }
}
class cat: animal{
    override init(name: String, health: Int) {
        super.init(name: name, health: 150)
    }
    func growl(){
        print("meow")
    }
    func run(){
        self.health -= 10
        print("Running")
    }
}
class cheetah: cat{
    override init(name: String, health: Int) {
        super.init(name: name, health: 200)
        func run(){
            if self.health > 50 {
                self.health -= 50
                print("running fast")
            }
            if self.health <= 50{
                print("you do not have enough health to run")
            }
        }
        func sleep(){
            if self.health + 50 <= 200{
                self.health += 50
            }
            if self.health + 50 > 200{
                self.health = 200
            }
            print("sleeping")
        }
    }
}
