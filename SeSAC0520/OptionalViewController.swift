//
//  OptionalViewController.swift
//  SeSAC0520
//
//  Created by 여성은 on 5/20/24.
//

import UIKit

class OptionalViewController: UIViewController {

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // 1. 바탕 탭 제스쳐
    // 2. return
    // 3. 버튼 클릭 시
    

    // Any: tapGesture, UIbutton 에게 같은 기능을
    @IBAction func keyboardDismiss(_ sender: Any) {
        view.endEditing(true)
    }
    
    

}
