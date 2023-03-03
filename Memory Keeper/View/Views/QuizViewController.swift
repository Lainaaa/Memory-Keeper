import UIKit

class QuizViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var translation: UITextField!
    @IBOutlet var translatedWord: UITextView!
    
    //MARK: viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        warning.isHidden = true
        getRandomWord()
//        registerForKeyboardNotifications()
    }
    
    //MARK: - logic for quiz
    
    var randomTranslatedWord: WordEntity!
    var answeredArray: [Int] = []
    var answeredArrayWithMistake: [Int] = []
    var from: Int = 0
    var to: Int = 0
    
    //MARK: getRandomIndex
    
    func getRandomIndex(from: Int,to: Int)-> Int{
        let randomIndex = Int.random(in: from...to)
        for index in answeredArray{
            if randomIndex == index{
                if answeredArray.count == to - from + 1{
                    return randomIndex
                }
                return getRandomIndex(from: self.from, to: self.to)
            }
        }
        return randomIndex
    }
    
    //MARK: prepare(for segue: )
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showResult" else { return }
        guard let destination = segue.destination as? ResultTableViewController else{return}
        destination.answeredArrayWithMistake = self.answeredArrayWithMistake
    }
    
    func showNextScene(){
        if answeredArray.count == to - from + 1{
            performSegue(withIdentifier: "showResult", sender: nil)
        }
    }
    
    //MARK: getRandomWord
    
    func getRandomWord(){
        
        showNextScene()
        
        if CoreDataManager.shared.words.count != -404{
            let randomIndex = getRandomIndex(from: self.from, to: self.to)
            answeredArray.append(randomIndex)
            for word in CoreDataManager.shared.words{
                if word.id == randomIndex{
                    randomTranslatedWord = word
                }
            }
            //            randomTranslatedWord = CoreDataManager.shared.words[randomIndex]
            switch Int.random(in: 0..<2){
            case 0:
                translatedWord.text = randomTranslatedWord.ru
            case 1:
                translatedWord.text = randomTranslatedWord.eng
            default:
                return
            }
        }
    }
    
    lazy var count = 1
    @IBOutlet var wordTitle: UITextView!
    @IBOutlet var warning: UITextView!
    
    @IBOutlet var nextButton: UIButton!
    
    //MARK: nextButtom
    
    @IBAction func nextButton(_ sender: UIButton) {
        if (translatedWord.text.lowercased() == randomTranslatedWord.ru?.lowercased() && translation.text?.lowercased() == randomTranslatedWord.eng?.lowercased() || translatedWord.text.lowercased() == randomTranslatedWord.eng?.lowercased() && translation.text?.lowercased() == randomTranslatedWord.ru?.lowercased()){
            count = count + 1
            wordTitle.text = "Word \(count)"
            warning.isHidden = true
            getRandomWord()
        }else{
            warning.isHidden = false
            if translation.text != ""{
                if answeredArrayWithMistake.last != answeredArray.last{
                    answeredArrayWithMistake.append(answeredArray.last!)
                }
            }
        }
        translation.text = ""
    }
    
    //MARK: idkButton
    
    @IBAction func idkButton(_ sender: UIButton){
        if translatedWord.text == randomTranslatedWord.ru{
            translation.text = randomTranslatedWord.eng
        }else{
            translation.text = randomTranslatedWord.ru
        }
        
        if answeredArrayWithMistake.last == nil{
            answeredArrayWithMistake.append(answeredArray.last!)
        }else if answeredArrayWithMistake.last! != answeredArray.last!{
            answeredArrayWithMistake.append(answeredArray.last!)
        }
    }
    
    //MARK: - Something with keyboard
    
    @IBAction func hideKeyboard(_ sender: UITapGestureRecognizer) {
        translation.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        translation.resignFirstResponder()
        nextButton(nextButton)
        return true
    }
    
//TODO: Do it correct
//
//    deinit{
//        removeKeyboardNotifications()
//    }
//
//    func registerForKeyboardNotifications(){
//        NotificationCenter.default.addObserver(self, selector: #selector(kbWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
//        NotificationCenter.default.addObserver(self, selector: #selector(kbWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
//    }
//
//    func removeKeyboardNotifications(){
//        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
//        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
//    }
//
//    @objc func kbWillShow(_ notification: Notification){
//        let userInfo = notification.userInfo
//        let kbFrameSize = (userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
//        scrollView.contentOffset = CGPoint(x: 0, y: 100)
//    }
//
//    override func viewDidAppear(_ animated: Bool) {
//       scrollView.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
//    }
//
//    @objc func kbWillHide(_ notification: Notification){
//        scrollView.contentOffset = CGPoint.zero
//    }
}
