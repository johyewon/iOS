//
//  DetailViewController.swift
//  PassData
//
//  Created by 조혜원 on 2022/08/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    // instance property
    var someString = "SomeString"
    @IBOutlet weak var someLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        someLabel.text = someString

    }


}
