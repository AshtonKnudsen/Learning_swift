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
    }
    func deal(){
        print(cards[Int.random(in: 0 ..< 29)])
    }
}
var mydeck: deck = deck(cards: [card(color: "blue", roll: 0)])
        while mydeck.cards.count < 30 {
            mydeck.cards.append(card(color:"blue", roll: 0))
            mydeck.cards.append(card(color:"red", roll: 0))
            mydeck.cards.append(card(color:"green", roll: 0))
        }
mydeck.deal()



