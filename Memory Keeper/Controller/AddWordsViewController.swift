import UIKit

class AddWordsViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var nameOfQuiz: UITextField!
    @IBOutlet var addingWordsView: UIStackView!
    @IBOutlet var warningView: UITextView!
    @IBOutlet var topicView: UIStackView!
    
    var lastIndexOfWords: Int!
    var statusOfNextTopicButtonIsPressed: Bool = false
    var setNameOfQuiz: String!
    
    //MARK: viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addingWordsView.isHidden = true
        warningView.isHidden = true
        
        //Here we look at whether we want to add a word to an existing quiz or create a new quiz
        lastIndexOfWords = CoreDataManager.shared.words.count
        if statusOfNextTopicButtonIsPressed{
            nameOfQuiz.text = setNameOfQuiz
            nextTopicButton(nextTopicButton)
            warningView.isHidden = true
        }
    }
    
    @IBOutlet var rusWordTextField: UITextField!
    @IBOutlet var engWordTextField: UITextField!
    @IBOutlet var nextTopicButton: UIButton!
    
    //MARK: nextTopicButton
    
    @IBAction func nextTopicButton(_ sender: UIButton) {
        if nameOfQuiz.text!.isEmpty{
            warningView.isHidden = false
        }else {
            topicView.isHidden = true
            addingWordsView.isHidden = false
            nextTopicButton.isHidden = true
            warningView.isHidden = true
        }
        navigationItem.title = nameOfQuiz.text
    }
    
    lazy var count = 1;
    @IBOutlet var wordTitle: UITextView!
    var addWordsToExistQuizRu: String = ""
    var addWordsToExistQuizEng: String = ""
    
    //MARK: nextAddingWordsButton
    
    @IBOutlet var nextAddingWordsButton: UIButton!
    @IBOutlet var rusWordTextView: UITextView!
    @IBOutlet var engWordTextView: UITextView!
    
    //MARK: nextAddingWordsButton
    
    @IBAction func nextAddingWordsButton(_ sender: UIButton) {
        if rusWordTextField.text == ""{
            rusWordTextView.textColor = .red
            rusWordTextView.font = .boldSystemFont(ofSize: 19)
        }
        if engWordTextField.text == ""{
            engWordTextView.textColor = .red
            engWordTextView.font = .boldSystemFont(ofSize: 19)
        }
        if rusWordTextField.text != "" && engWordTextField.text != ""{
            if statusOfNextTopicButtonIsPressed{
                addingWordsToExistQuiz()
            }else{
                CoreDataManager.shared.saveWords(ruWord: rusWordTextField.text!, engWordTextField.text!)
            }
            rusWordTextField.text = ""
            engWordTextField.text = ""
            count = count + 1
            wordTitle.text = "Word \(count)"
            rusWordTextView.textColor = .black
            rusWordTextView.font = .systemFont(ofSize: 19)
            engWordTextView.textColor = .black
            engWordTextView.font = .systemFont(ofSize: 19)
        }
    }
    
    var indexForEditingQuiz: Int!
    
    //MARK: konecButton
    
    @IBAction func konecButton(_ sender: UIButton){
        if statusOfNextTopicButtonIsPressed{
            if rusWordTextField.text != "" && engWordTextField.text != ""{
                addingWordsToExistQuiz()
                performSegue(withIdentifier: "showMain", sender: nil)
                count = count + 1
            }else{
                performSegue(withIdentifier: "showMain", sender: nil)
            }
        }else {
            if rusWordTextField.text != "" && engWordTextField.text != ""{
                CoreDataManager.shared.saveWords(ruWord: rusWordTextField.text!, engWordTextField.text!)
            }
            CoreDataManager.shared.saveQuiz(from: lastIndexOfWords, to: CoreDataManager.shared.words.count - 1,name: nameOfQuiz.text!)
            performSegue(withIdentifier: "showMain", sender: nil)
        }
    }
    
    func addingWordsToExistQuiz(){
        addWordsToExistQuizRu = rusWordTextField.text!
        addWordsToExistQuizEng = engWordTextField.text!
        CoreDataManager.shared.addWordsToQuiz(indexOfQuiz: indexForEditingQuiz,dataWordsRu: addWordsToExistQuizRu, dataWordsEng: addWordsToExistQuizEng, countOfWords: count, indexToInsert: Int(CoreDataManager.shared.quizzes[indexForEditingQuiz].to))
    }
    
    //MARK: - Something with keyboard
    
    @IBAction func hideKeyboard(_ sender: UITapGestureRecognizer) {
        nameOfQuiz.resignFirstResponder()
        rusWordTextField.resignFirstResponder()
        engWordTextField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        if topicView.isHidden{
            rusWordTextField.resignFirstResponder()
            engWordTextField.resignFirstResponder()
            if textField == engWordTextField{
                nextAddingWordsButton(nextAddingWordsButton)
            }
        }
        if !topicView.isHidden{
            nameOfQuiz.resignFirstResponder()
            nextTopicButton(nextTopicButton)
        }
        return true
    }
}
