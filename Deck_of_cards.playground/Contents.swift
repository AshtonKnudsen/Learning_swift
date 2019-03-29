import UIKit

struct card{
    var color: String
    var roll: Int
    init(color: String, roll:Int) {
        self.color = color
        self.roll = roll
        if color == "blue"{
            self.roll = 1
        }
        if color == "red"{
            self.roll = 2
        }
        if color == "green"{
            self.roll = 3
        }
    }
}

class deck{
    var cards: Array<card>
    init(cards: [card]) {
        self.cards = cards
        while cards.count < 30 {
            self.cards.append(card(color:"blue", roll: 0))
            self.cards.append(card(color:"red", roll: 0))
            self.cards.append(card(color:"green", roll: 0))
        }
    }
    func deal(){
        print(cards[0])
    }
}
var mydeck: deck = deck(cards: [card(color: "blue", roll: 0)])
print(mydeck)



