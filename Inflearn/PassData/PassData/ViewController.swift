// pass data (데이터를 넘겨주는 방법)
/**
 1.  instance property
 * 변수
 */
import UIKit

class ViewController: UIViewController {
    
    var name: String? = ""
    
    @IBOutlet weak var firstTextView: UITextView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var planetTextView: UITextView!
    @IBOutlet weak var planetField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        introduction()
        start()
        print(response(question: "What's your name?"))
    }
    
    override func didReceiveMemoryWarning() {
    }
    
    @IBAction func nameSubmit(_ sender: Any) {
        if(nameField.text?.isEmpty == false) {
            name = nameField.text
            
            myLabel.text = "Nice to meet you, \(name ?? "")"
        } else {
            alert(message: "이름을 입력해 주세요.")
        }
    }
    
    @IBAction func planetSubmit(_ sender: Any) {
        
        if(name?.isEmpty == false) {
            let planet = planetField.text
            if(planet == "Y") {
                planetTextView.text = "OK! Traveling to ..."
            } else if(planet == "N") {
                planetTextView.text = "Ok, name the planet you would ... ..."
            } else {
                alert(message: "Sorry, I didn't get that.")
            }
        } else {
            alert(message: "이름을 먼저 작성해 주세요")
        }
    }
    
    private func alert(message: String) {
        let alert = UIAlertController(title: "", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default){ (action) in
            
        }
        
        alert.addAction(okAction)
        
        present(alert, animated: false)
    }
    
    
    func start() {
        planetTextView.text = "Shell I randomly choose a planet for you to visit? (Y or N)"
    }
    
    func introduction() {
        let numberOfPlanets: Int = 0
        let diameterOfEarth: Float = 23859.92
        
        firstTextView.text = "Welcome to our solar system!\nThere are \(numberOfPlanets) planets to explore.\nU are currently on Earth, which has a circuference of \(diameterOfEarth) miles."
        
    }
    
    func response (question: String) -> String {
        myLabel.text = question
        
        return "Good"
    }
}

