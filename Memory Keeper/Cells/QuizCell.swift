import UIKit

class QuizCell: UITableViewCell {
    
    @IBOutlet var quiz: UILabel!
    
    func configure(_ indexPath: Int){
        quiz.text = ("\(indexPath + 1). \(CoreDataManager.shared.quizzes[indexPath].name!) (\(CoreDataManager.shared.quizzes[indexPath].to - CoreDataManager.shared.quizzes[indexPath].from + 1) words)")
    }
}
