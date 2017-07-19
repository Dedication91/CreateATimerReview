//
//  ViewController.swift
//  CreateATimerReview
//
//  Created by Shaan Mirchandani
//  Copyright © 2017 Shaan Mirchandani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbl: UILabel!
    
    var time = 0
    
    var timer = Timer()
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func start(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
    }
    
    func action() {
        time += 1
        lbl.text = String(time)
    }

    @IBAction func Pause(_ sender: Any) {
        timer.invalidate()
    }
    @IBAction func reset(_ sender: Any) {
        timer.invalidate()
        time = 0
        lbl.text = ("0")
    }
}

