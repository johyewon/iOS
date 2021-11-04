//
//  CodePresentViewController.swift
//  ScreenTrasactionExample
//
//  Created by 조혜원 on 2021/11/01.
//

import UIKit

class CodePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tabBackButton(_ sender: UIButton) {
        self.navigationController?.dismiss(animated: true, completion: nil)
        
    }
}
