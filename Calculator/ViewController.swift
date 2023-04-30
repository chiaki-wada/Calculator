//
//  ViewController.swift
//  Calculator
//
//  Created by Chiaki Wada on 2023/04/30.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!   //計算結果を表示するラベル
    @IBOutlet var circleButton: UIButton!
    @IBOutlet var roundButton: UIButton!
    @IBOutlet var roundButton2: UIButton!
    @IBOutlet var roundButton3: UIButton!
    @IBOutlet var roundButton4: UIButton!
    
    var number1: Int = 0
    var number2: Int = 0
    var number3: Int = 0
    
    var ope: Int = 0    //どの四則演算をするか判定するための変数
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        circleButton.layer.cornerRadius = 10
        roundButton.layer.cornerRadius = 30
        roundButton2.layer.cornerRadius = 30
        roundButton3.layer.cornerRadius = 30
        roundButton4.layer.cornerRadius = 30
        
    }
    
    @IBAction func select1() {
        number1 = number1*10 + 1
        label.text = String(number1)
    }
    
    @IBAction func select2() {
        number1 = number1*10 + 2
        label.text = String(number1)
    }
        
    @IBAction func select3() {
        number1 = number1*10 + 3
        label.text = String(number1)
    }
    
    @IBAction func select4(){
        number1 = number1*10 + 4
        label.text = String(number1)
    }
    
    @IBAction func select5(){
        number1 = number1*10 + 5
        label.text = String(number1)
    }
        
    @IBAction func select6(){
        number1 = number1*10 + 6
        label.text = String(number1)
    }
        
    @IBAction func select7(){
        number1 = number1*10 + 7
        label.text = String(number1)
    }
    
    @IBAction func select8(){
        number1 = number1*10 + 8
        label.text = String(number1)
    }
    
    @IBAction func select9(){
        number1 = number1*10 + 9
        label.text = String(number1)
    }
        
    @IBAction func plus(){
        number2 = number1
        number1 = 0
        ope = 1
    }
    
    @IBAction func minus(){
        number2 = number1
        number1 = 0
        ope = 2
    }
    
    @IBAction func multiple(){
        number2 = number1
        number1 = 0
        ope = 3
    }
    
    @IBAction func divide(){
        number2 = number1
        number1 = 0
        ope = 4
    }
        
    @IBAction func equal(){
        if ope == 1{
            //プラスのとき
            number3 = number2 + number1
        } else if ope == 2 {
            //マイナスのとき
            number3 = number2 - number1
        } else if ope == 3 {
            //かけ算のとき
            number3 = number2 * number1
        } else if ope == 4 {
            //わり算のとき
            number3 = number2 / number1
        }
        label.text = String(number3)
        }
    
    @IBAction func clear() {
        number1 = 0
        number2 = 0
        number3 = 0
        ope = 0
        label.text = String(number3)
    }
}
