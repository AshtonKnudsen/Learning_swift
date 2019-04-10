//
//  ViewController.swift
//  coldcallsannon
//
//  Created by Ashton Knudsen on 4/8/19.
//  Copyright © 2019 Ashton Knudsen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var name_label: UILabel!
    let names = ["Liam","Emma","Leo","Maya","Theodore","Sarah","Jeremiah","Madelyn","Hudson","Adeline","Robert","Alexa","Easton","Ariana","Nolan","Elena","Nicholas","Gabriella","Ezra","Naomi","Colton","Alice","Angel","Sadie","Brayden","Hailey","Jordan","Eva","Dominic","Emilia","Austin","Autumn","Ian","Quinn","Adam","Nevaeh","Elias","Piper","Jaxson","Ruby","Greyson","Serenity","Jose","Willow","Ezekiel","Everly","Carson","Cora","Evan","Kaylee","Maverick","Lydia","Bryson","Aubree","Jace","Arianna","Cooper","Eliana","Xavier","Peyton","Parker","Melanie","Roman","Gianna","Jason","Isabelle","Santiago","Julia","Chase","Valentina","Sawyer","Nova","Gavin","Clara","Leonardo","Vivian","Kayden","Reagan","Ayden","Mackenzie","Jameson","Madeline"]
    
    var namecounter = 0

    @IBAction func Change_name(_ sender: UIButton) {
        namecounter = Int.random(in: 0..<82)
        name_label.text = names[namecounter]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
//82

