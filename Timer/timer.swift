//
//  timer.swift
//  Timer
//
//  Created by ryo takumi on 2020/07/14.
//  Copyright © 2020 ryo takumi. All rights reserved.
//

import UIKit
 
class timer: UIViewController {
 
    var timer: Timer!
 
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }
 
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
 
        startTimer()
 
    }
 
    func startTimer() {
        timer = Timer.scheduledTimer(
            timeInterval: 0.01,
            target: self,
            selector: #selector(self.timerCounter),
            userInfo: nil,
            repeats: true)
    }
 
    @objc func timerCounter() {
        let now = Date()
 
        let fomatter = DateFormatter()
        fomatter.dateFormat = "mm:ss.SSS"
        print(fomatter.string(from: now))
    }
 
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        timer.invalidate()
    }
 
}
