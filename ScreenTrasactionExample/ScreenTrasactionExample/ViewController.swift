//
//  ViewController.swift
//  ScreenTrasactionExample
//
//  Created by 조혜원 on 2021/11/01.
//

import UIKit

class ViewController: UIViewController, SendDataDelegate {
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view 메모리 노출")
        // Do any additional setup after loading the view.
    }


    /**
        code 로 push
     */
    @IBAction func tabCodePushButton(_ sender: UIButton) {
        
        // 스토리보드에 있는 화면 id 를 가져옴
        // as 문 사용 시 CodePushViewController 변수들에 접근 가능
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") as? CodePushViewController else {
            return
        }
        
        viewController.name = "Hani"
        self.navigationController?.pushViewController(viewController, animated: true)
    
    }
    
    
    @IBAction func tabCodePresentButton(_ sender: UIButton) {
        
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePresentViewController") as? CodePresentViewController else {
            return
        }
        viewController.modalPresentationStyle = .pageSheet     // 풀 스크린 설정 (모달 x)
        viewController.name = "Hanix_x"
        viewController.delegate = self
        self.present(viewController, animated: true, completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("View 호출 중")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("view 호출 완료")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("view 사라지는 중")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print("view 사라짐")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SuguePushViewController {
            viewController.name = "Hani"   // segue 로 데이터 전송
        }
    }
    
    func sendData(name: String) {
        print("name : \(name)")
        self.nameLabel.text = name
        self.nameLabel.sizeToFit()      // text 에 맞게 label 사이즈 조정을 위해
    }
}

