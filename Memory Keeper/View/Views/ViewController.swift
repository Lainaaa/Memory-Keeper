import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var allWordsQuiz: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
}
    
    func quizIsHidden(){
        if CoreDataManager.shared.quizzes.isEmpty{
            print(CoreDataManager.shared.quizzes.count)
            allWordsQuiz.isEnabled = false
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        quizIsHidden()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowAllWordsQuiz" {
            guard let destination = segue.destination as? QuizViewController else { return }
            destination.from = 0
            destination.to = CoreDataManager.shared.words.count - 1
        }
    }
}

