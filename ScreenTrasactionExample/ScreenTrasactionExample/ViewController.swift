//
//  ViewController.swift
//  ScreenTrasactionExample
//
//  Created by 조혜원 on 2021/11/01.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    /**
        code 로 push
     */
    @IBAction func tabCodePushButton(_ sender: UIButton) {
        
        // 스토리보드에 있는 화면 id 를 가져옴
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") else {
            return
        }
        
        self.navigationController?.pushViewController(viewController, animated: true)
    
    }
    
    
    @IBAction func tabCodePresentButton(_ sender: UIButton) {
        
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePresentViewController") else {
            return
        }
        
        self.present(viewController, animated: true, completion: nil)
    }
}

