//
//  ViewController.swift
//  tictactoe
//
//  Created by Ashton Knudsen on 4/11/19.
//  Copyright © 2019 Ashton Knudsen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Winnerlabel: UILabel!
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button5: UIButton!
    @IBOutlet weak var Button6: UIButton!
    @IBOutlet weak var Button7: UIButton!
    @IBOutlet weak var Button8: UIButton!
    @IBOutlet weak var Button9: UIButton!
    
    @IBAction func Button1(_ sender: UIButton) {
        buttonaction(Button1)
    }
    @IBAction func Button2(_ sender: UIButton) {
        buttonaction(Button2)
    }
    @IBAction func Button3(_ sender: UIButton) {
        buttonaction(Button3)
    }
    @IBAction func Button4(_ sender: UIButton) {
        buttonaction(Button4)
    }
    @IBAction func Button5(_ sender: UIButton) {
        buttonaction(Button5)
    }
    @IBAction func Button6(_ sender: UIButton) {
        buttonaction(Button6)
    }
    @IBAction func Button7(_ sender: UIButton) {
        buttonaction(Button7)
    }
    @IBAction func Button8(_ sender: UIButton) {
        buttonaction(Button8)
    }
    @IBAction func Button9(_ sender: UIButton) {
        buttonaction(Button9)
    }
    
    var playerturn = "x"
    
    func buttonaction(_ sender: UIButton){
        if playerturn == "x"{
            sender.setBackgroundImage(UIImage (named: "Ximg"), for: .normal)
            sender.isUserInteractionEnabled = false
            sender.backgroundColor = UIColor.blue
        }
        if playerturn == "o"{
            sender.setBackgroundImage(UIImage (named: "Oimg"), for: .normal)
            sender.isUserInteractionEnabled = false
            sender.backgroundColor = UIColor.red
        }
        nextturn()
        wincondition()
    }
    func nextturn(){
        if playerturn == "x"{
            playerturn = "o"
            return
        }
        if playerturn == "o"{
            playerturn = "x"
            return
        }
    }
    
    @IBAction func Reset_button(_ sender: UIButton) {
        togglebuttonson()
        Button1.setBackgroundImage(UIImage(named: "background"), for: .normal)
        Button2.setBackgroundImage(UIImage(named: "background"), for: .normal)
        Button3.setBackgroundImage(UIImage(named: "background"), for: .normal)
        Button4.setBackgroundImage(UIImage(named: "background"), for: .normal)
        Button5.setBackgroundImage(UIImage(named: "background"), for: .normal)
        Button6.setBackgroundImage(UIImage(named: "background"), for: .normal)
        Button7.setBackgroundImage(UIImage(named: "background"), for: .normal)
        Button8.setBackgroundImage(UIImage(named: "background"), for: .normal)
        Button9.setBackgroundImage(UIImage(named: "background"), for: .normal)
        Button1.backgroundColor = UIColor.lightGray
        Button2.backgroundColor = UIColor.lightGray
        Button3.backgroundColor = UIColor.lightGray
        Button4.backgroundColor = UIColor.lightGray
        Button5.backgroundColor = UIColor.lightGray
        Button6.backgroundColor = UIColor.lightGray
        Button7.backgroundColor = UIColor.lightGray
        Button8.backgroundColor = UIColor.lightGray
        Button9.backgroundColor = UIColor.lightGray
        Winnerlabel.text = ""
    }
    func wincondition(){
        if Button1.backgroundColor == UIColor.red && Button2.backgroundColor == UIColor.red && Button3.backgroundColor == UIColor.red{
            togglebuttonsoff()
            Winnerlabel.text = "Red Wins"
        }
        if Button1.backgroundColor == UIColor.red && Button4.backgroundColor == UIColor.red && Button7.backgroundColor == UIColor.red{
            togglebuttonsoff()
            Winnerlabel.text = "Red Wins"
        }
        if Button2.backgroundColor == UIColor.red && Button5.backgroundColor == UIColor.red && Button8.backgroundColor == UIColor.red{
            togglebuttonsoff()
            Winnerlabel.text = "Red Wins"
        }
        if Button3.backgroundColor == UIColor.red && Button6.backgroundColor == UIColor.red && Button9.backgroundColor == UIColor.red{
            togglebuttonsoff()
            Winnerlabel.text = "Red Wins"
        }
        if Button4.backgroundColor == UIColor.red && Button5.backgroundColor == UIColor.red && Button6.backgroundColor == UIColor.red{
            togglebuttonsoff()
            Winnerlabel.text = "Red Wins"
        }
        if Button7.backgroundColor == UIColor.red && Button8.backgroundColor == UIColor.red && Button9.backgroundColor == UIColor.red{
            togglebuttonsoff()
            Winnerlabel.text = "Red Wins"
        }
        if Button1.backgroundColor == UIColor.red && Button5.backgroundColor == UIColor.red && Button9.backgroundColor == UIColor.red{
            togglebuttonsoff()
            Winnerlabel.text = "Red Wins"
        }
        if Button3.backgroundColor == UIColor.red && Button5.backgroundColor == UIColor.red && Button7.backgroundColor == UIColor.red{
            togglebuttonsoff()
            Winnerlabel.text = "Red Wins"
        }
        
        if Button1.backgroundColor == UIColor.blue && Button2.backgroundColor == UIColor.blue && Button3.backgroundColor == UIColor.blue{
            togglebuttonsoff()
            Winnerlabel.text = "Blue Wins"
        }
        if Button1.backgroundColor == UIColor.blue && Button4.backgroundColor == UIColor.blue && Button7.backgroundColor == UIColor.blue{
            togglebuttonsoff()
            Winnerlabel.text = "Blue Wins"
        }
        if Button2.backgroundColor == UIColor.blue && Button5.backgroundColor == UIColor.blue && Button8.backgroundColor == UIColor.blue{
            togglebuttonsoff()
            Winnerlabel.text = "Blue Wins"
        }
        if Button3.backgroundColor == UIColor.blue && Button6.backgroundColor == UIColor.blue && Button9.backgroundColor == UIColor.blue{
            togglebuttonsoff()
            Winnerlabel.text = "Blue Wins"
        }
        if Button4.backgroundColor == UIColor.blue && Button5.backgroundColor == UIColor.blue && Button6.backgroundColor == UIColor.blue{
            togglebuttonsoff()
            Winnerlabel.text = "Blue Wins"
        }
        if Button7.backgroundColor == UIColor.blue && Button8.backgroundColor == UIColor.blue && Button9.backgroundColor == UIColor.blue{
            togglebuttonsoff()
            Winnerlabel.text = "Blue Wins"
        }
        if Button1.backgroundColor == UIColor.blue && Button5.backgroundColor == UIColor.blue && Button9.backgroundColor == UIColor.blue{
            togglebuttonsoff()
            Winnerlabel.text = "Blue Wins"
        }
        if Button3.backgroundColor == UIColor.blue && Button5.backgroundColor == UIColor.blue && Button7.backgroundColor == UIColor.blue{
            togglebuttonsoff()
            Winnerlabel.text = "Blue Wins"
        }
    }
    func togglebuttonson(){
        Button1.isUserInteractionEnabled = true
        Button2.isUserInteractionEnabled = true
        Button3.isUserInteractionEnabled = true
        Button4.isUserInteractionEnabled = true
        Button5.isUserInteractionEnabled = true
        Button6.isUserInteractionEnabled = true
        Button7.isUserInteractionEnabled = true
        Button8.isUserInteractionEnabled = true
        Button9.isUserInteractionEnabled = true
    }
    func togglebuttonsoff(){
        Button1.isUserInteractionEnabled = false
        Button2.isUserInteractionEnabled = false
        Button3.isUserInteractionEnabled = false
        Button4.isUserInteractionEnabled = false
        Button5.isUserInteractionEnabled = false
        Button6.isUserInteractionEnabled = false
        Button7.isUserInteractionEnabled = false
        Button8.isUserInteractionEnabled = false
        Button9.isUserInteractionEnabled = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        Winnerlabel.text = ""
    }
    
}
//would like to add some helper functions in here
//could have made this way easier if i used an array for the scoring
