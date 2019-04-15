//
//  ViewController.swift
//  tipcalculator
//
//  Created by Ashton Knudsen on 4/12/19.
//  Copyright © 2019 Ashton Knudsen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var total = ""
    
    @IBOutlet weak var total_label: UILabel!
    @IBOutlet weak var pointbutton_label: UIButton!
    @IBOutlet weak var percentlabel1: UILabel!
    @IBOutlet weak var tipammount1: UILabel!
    @IBOutlet weak var percentlabel2: UILabel!
    @IBOutlet weak var tipammount2: UILabel!
    @IBOutlet weak var percentlabel3: UILabel!
    @IBOutlet weak var tipammount3: UILabel!
    @IBOutlet weak var totalandtip1: UILabel!
    @IBOutlet weak var totalandtip2: UILabel!
    @IBOutlet weak var totalandtip3: UILabel!
    
    @IBAction func tippercslider(_ sender: UISlider) {
        perc1 = perc1 + Int(sender.value)
        refresh()
    }
    
    @IBAction func one_button(_ sender: UIButton) {
        total = "\(total)1"
        refresh()
    }
    @IBAction func two_button(_ sender: UIButton) {
        total = "\(total)2"
        refresh()
    }
    @IBAction func three_button(_ sender: UIButton) {
        total = "\(total)3"
        refresh()
    }
    @IBAction func four_button(_ sender: UIButton) {
        total = "\(total)4"
        refresh()
    }
    @IBAction func five_button(_ sender: UIButton) {
        total = "\(total)5"
        refresh()
    }
    @IBAction func six_button(_ sender: UIButton) {
        total = "\(total)6"
        refresh()
    }
    @IBAction func seven_button(_ sender: UIButton) {
        total = "\(total)7"
        refresh()
    }
    @IBAction func eight_button(_ sender: UIButton) {
        total = "\(total)8"
        refresh()
    }
    @IBAction func nine_button(_ sender: UIButton) {
        total = "\(total)9"
        refresh()
    }
    @IBAction func zero_button(_ sender: UIButton) {
        total = "\(total)0"
        refresh()
    }
    @IBAction func point_button(_ sender: UIButton) {
        total = "\(total)."
        pointbutton_label.isUserInteractionEnabled = false
        refresh()
    }
    
    
    @IBAction func clear_button(_ sender: UIButton) {
        total = ""
        pointbutton_label.isUserInteractionEnabled = true
        refresh()
        return
    }
    
    var perc1 = 10
    var perc2 = 15
    var perc3 = 20
    
    func calculate(){
        let inttotal = Float32(total)
        if inttotal != nil{
            let percent1: Float32 = Float32((inttotal ?? 1) * Float32(perc1) / 100)
            tipammount1.text = "\(percent1)"
            let percent2: Float32 = Float32((inttotal ?? 1) * Float32(perc2) / 100)
            tipammount2.text = "\(percent2)"
            let percent3: Float32 = Float32((inttotal ?? 1) * Float32(perc3) / 100)
            tipammount3.text = "\(percent3)"
            totalandtip1.text = "\( Float32(inttotal ?? 1) + percent1 )"
            totalandtip2.text = "\( Float32(inttotal ?? 1) + percent2 )"
            totalandtip3.text = "\( Float32(inttotal ?? 1) + percent3 )"
        }
        return
    }
    
    func refresh(){
        total_label.text = total
        percentlabel1.text = "\(perc1)"
        percentlabel2.text = "\(perc2)"
        percentlabel3.text = "\(perc3)"
        calculate()
        return
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tipammount1.text = ""
        tipammount2.text = ""
        tipammount3.text = ""
        totalandtip1.text = ""
        totalandtip2.text = ""
        totalandtip3.text = ""
        refresh()
        
    }


}

