//
//  SuguePresentViewController.swift
//  ScreenTrasactionExample
//
//  Created by ์กฐํ์ on 2021/11/01.
//

import UIKit

class SuguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tabBackButton(_ sender: UIButton) {
        
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
