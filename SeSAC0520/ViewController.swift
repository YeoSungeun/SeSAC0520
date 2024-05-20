//
//  ViewController.swift
//  SeSAC0520
//
//  Created by 여성은 on 5/20/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var oneButton: UIButton!
    @IBOutlet var twoButton: UIButton!
    @IBOutlet var threeButton: UIButton!
    
    @IBOutlet var oneLabel: UILabel!
    @IBOutlet var twoLabel: UILabel!
    @IBOutlet var threeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // labelName: 매개변수(parameter)
        // oneLabel, twoLabel .... : 전달 인자(argument)
        designLabelUI(oneLabel, thisIsTextColor: .red)
        designLabelUI(twoLabel, thisIsTextColor: .yellow)
        designLabelUI(threeLabel, thisIsTextColor: .green)
        
        designButtonUI(oneButton, title: "RED", titleColor: .red)
        designButtonUI(twoButton, title: "YELLOW", titleColor: .yellow)
        designButtonUI(threeButton, title: "GREEN", titleColor: .green)
        
    
    }
    
    // 외부 매개변수를 생략하는 거 구나!
    @IBAction func oneButtonClicked(_ sender: UIButton) {
        oneLabel.text = "클릭됨!"
    }
    
    
    // 매개변수(parameter)
    // 외부 매개변수(Argument Label) ex)thisIsTextColor
    // 내부 매개변수(Parameter Name)ex)jack
    func designLabelUI(_ a: UILabel, thisIsTextColor jack: UIColor) {
        // labelName -> 함수 안에서만 사용되는 변수 만듦
        
        a.text = "0"
        a.textColor = jack
        a.font = .boldSystemFont(ofSize: 30)
        a.textAlignment = .center
        
    }
    
    func designButtonUI(_ button: UIButton,title: String, titleColor: UIColor) {
        button.setTitleColor(titleColor, for: .normal)
        button.setTitle(title, for: .normal)
    }


}

