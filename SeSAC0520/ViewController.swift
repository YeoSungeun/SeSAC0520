//
//  ViewController.swift
//  SeSAC0520
//
//  Created by 여성은 on 5/20/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var labelList: [UILabel]!
    
    @IBOutlet var oneButton: UIButton!
    @IBOutlet var twoButton: UIButton!
    @IBOutlet var threeButton: UIButton!
    
    @IBOutlet var oneLabel: UILabel!
    @IBOutlet var twoLabel: UILabel!
    @IBOutlet var threeLabel: UILabel!
    
    var count = [0, 0, 0]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        // labelName: 매개변수(parameter)
        // oneLabel, twoLabel .... : 전달 인자(argument)
        designLabelUI(oneLabel, thisIsTextColor: .red)
        designLabelUI(twoLabel, thisIsTextColor: .yellow)
        designLabelUI(threeLabel, thisIsTextColor: .green)
        
        designButtonUI(oneButton, title: "RED", titleColor: .red)
        designButtonUI(twoButton, title: "YELLOW", titleColor: .yellow)
        designButtonUI(threeButton, title: "GREEN", titleColor: .green)
        
    
    }
    
    // _ ->외부 매개변수를 생략하는 거 구나!
    // 1. 어떤 버튼을 클릭했는지 어떻게 아나요? -> 매개변수 존재!
    // -> currentTitle (옵셔널 조심, 버전 조심)
    // -> tag
    // 2. 아울렛 뭐 어떻게 못할까?? => OutleCollection
    @IBAction func oneButtonClicked(_ sender: UIButton) {
        
        print("tag: \(sender.tag)") // 현재 사용하는 타이틀이 뭔지!
        
//        if sender.tag == 0 {
//            count[sender.tag] += 1
//        } else if sender.tag == 1 {
//            count[1] += 1
//        } else {
//            count[2] += 1
//        }
        count[sender.tag] += 1
        
//        oneLabel.text = "\(count[0])번 클릭"
//        twoLabel.text = "\(count[1])번 클릭"
//        threeLabel.text = "\(count[2])번 클릭"
        labelList[sender.tag].text = "\(count[sender.tag])번 클릭"
    }
    
    @IBAction func imageViewTapped(_ sender: UITapGestureRecognizer) {
        print("imageView tapped")
    }
    
    // 1. did end on exit (returnKey 눌렀을 때)
    // 2. view.endEditing(true) (언제 어디서든 적용 가능)
    @IBAction func keyboardDismiss(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    
    
    // 매개변수(parameter)
    // 외부 매개변수(Argument Label) ex)thisIsTextColor
    // 내부 매개변수(Parameter Name)ex)jack
    func designLabelUI(_ a: UILabel, thisIsTextColor jack: UIColor) {
        // labelName -> 함수 안에서만 사용되는 변수 만듦
        
        a.text = "0번"
        a.textColor = jack
        a.font = .boldSystemFont(ofSize: 20)
        a.textAlignment = .center
        
    }
    
    func designButtonUI(_ button: UIButton,title: String, titleColor: UIColor) {
        button.setTitleColor(titleColor, for: .normal)
        button.setTitle(title, for: .normal)
    }


}

