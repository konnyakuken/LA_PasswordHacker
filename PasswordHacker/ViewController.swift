//
//  ViewController.swift
//  PasswordHacker
//
//  Created by 若宮拓也 on 2022/08/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultLabel1: UILabel!
    @IBOutlet var resultLabel2: UILabel!
    @IBOutlet var resultLabel3: UILabel!
    @IBOutlet var resultLabel4: UILabel!
    
    @IBOutlet var countLabel: UILabel!
    
    var password:Int = 1234

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func start(){
        for i in 0...9999{
            countLabel.text = String(i)
            
            //0.0005s待機する
            RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.0005))
            
            if (i == password){
                var digits = [Int]()
                
                for _ in 0...3{
                    digits.append(password % 10)
                    password /= 10
                }
                resultLabel1.text = String(digits[0])
                resultLabel2.text = String(digits[1])
                resultLabel3.text = String(digits[2])
                resultLabel4.text = String(digits[3])
                
            }
        }
    }

    @IBAction func reset(){
        password = 1234
        
        countLabel.text = "「START」ボタンを押して解析開始"
        
        resultLabel1.text = "0"
        resultLabel2.text = "0"
        resultLabel3.text = "0"
        resultLabel4.text = "0"
    }



}

