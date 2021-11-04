//
//  ViewController.swift
//  ExampleProject
//
//  Created by 조혜원 on 2021/10/29.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tabColorChangeBtn(_ sender: UIButton) {
        self.colorView.backgroundColor = UIColor.blue
        print("색상 변경 버튼이 클릭되었음")
    }
    
}

