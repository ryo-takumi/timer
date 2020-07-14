//
//  ViewController.swift
//  Timer
//
//  Created by ryo takumi on 2020/07/12.
//  Copyright © 2020 ryo takumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Timerlabel: UILabel!
    @IBOutlet weak var Startbutton: UIButton!
    @IBOutlet weak var Resetbutton: UIButton!
    
    private var timer = Timer()
    private var count = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Starttimer(_ sender: Any) {
        if !timer.isValid {
            stopButton()
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.updateTimer), userInfo: nil, repeats: true)
            }else{
            startButton()
                    timer.invalidate()
                }
    }
        @objc func updateTimer() {
            count += 0.1
            Timerlabel.text  = String(format: "%.1f", count)
        }
    
    @IBAction func Resettimer(_ sender: Any) {
        timer.invalidate()
        count = 0.0
        Timerlabel.text = String(format: "%.1f", count)
    }
    func startButton(){
        Startbutton.setTitle("Start", for: .normal)
        Startbutton.setTitleColor(#colorLiteral(red: 0.7055676579, green: 1, blue: 0.6596676707, alpha: 1), for: .normal)
        Startbutton.backgroundColor = #colorLiteral(red: 0.1799043417, green: 0.6762347817, blue: 0.2553646266, alpha: 1)
    }
    
    func stopButton(){
        Startbutton.setTitle("Stop", for: .normal)
        Startbutton.setTitleColor(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1), for: .normal)
        Startbutton.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
    }
}


