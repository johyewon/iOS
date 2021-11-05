//
//  ViewController.swift
//  LEDBoard
//
//  Created by 조혜원 on 2021/11/04.
//

import UIKit

class ViewController: UIViewController, LEDBoardSettingDelegate {
    @IBOutlet weak var contentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.contentLabel.textColor = .yellow
    }

    /**
     * segue 로 화면 전환이 있기 때문에 prepare 호출
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingViewController  = segue.destination as? SettingViewController {   // SettingViewController 에 접근 가능하게 as? 구문 사용
            settingViewController.delegate = self       // delegate 선언 -> extends 필요
            
            settingViewController.ledText = self.contentLabel.text
            settingViewController.textColor = self.contentLabel.textColor
            settingViewController.backgroundColor = self.view.backgroundColor ?? .black     // view 의 background 가 옵셔널이기 때문에 .black 기본 설정
        }
    }
    
        /**
         * 설정에서 화면 전환 시 데이터 가져와서 화면에 setting
         */
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor) {
        if let text = text {
            self.contentLabel.text = text
        }
        
        self.contentLabel.textColor = textColor
        self.view.backgroundColor = backgroundColor
    }
}

