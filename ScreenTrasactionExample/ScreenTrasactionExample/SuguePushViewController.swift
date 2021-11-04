//
//  SuguePushViewController.swift
//  ScreenTrasactionExample
//
//  Created by 조혜원 on 2021/11/01.
//

import UIKit

class SuguePushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tabBackButton(_ sender: UIButton) {
        // 다시 이전 화면으로 돌아감
        self.navigationController?.popViewController(animated: true)
        
        // root View 로 이동
        self.navigationController?.popToRootViewController(animated: true)
    }
}
