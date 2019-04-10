//
//  ViewController.swift
//  chillycalls2
//
//  Created by Ashton Knudsen on 4/8/19.
//  Copyright © 2019 Ashton Knudsen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var name_label: UILabel!
    @IBOutlet weak var number_label: UILabel!
    
    let names = ["Liam","Emma","Leo","Maya","Theodore","Sarah","Jeremiah","Madelyn","Hudson","Adeline","Robert","Alexa","Easton","Ariana","Nolan","Elena","Nicholas","Gabriella","Ezra","Naomi","Colton","Alice","Angel","Sadie","Brayden","Hailey","Jordan","Eva","Dominic","Emilia","Austin","Autumn","Ian","Quinn","Adam","Nevaeh","Elias","Piper","Jaxson","Ruby","Greyson","Serenity","Jose","Willow","Ezekiel","Everly","Carson","Cora","Evan","Kaylee","Maverick","Lydia","Bryson","Aubree","Jace","Arianna","Cooper","Eliana","Xavier","Peyton","Parker","Melanie","Roman","Gianna","Jason","Isabelle","Santiago","Julia","Chase","Valentina","Sawyer","Nova","Gavin","Clara","Leonardo","Vivian","Kayden","Reagan","Ayden","Mackenzie","Jameson","Madeline"]
    
    var namecounter = 0
    var num = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func Next_button(_ sender: UIButton) {
        num = Int.random(in: 1..<6)
        if num < 3{
            number_label.textColor = UIColor.red
        }
        if num >= 3{
            number_label.textColor = UIColor.orange
        }
        if num == 5{
            number_label.textColor = UIColor.green
        }
        number_label.text = "\(num)"
        namecounter = Int.random(in: 0..<83)
        name_label.text = names[namecounter]
    }
    

}

