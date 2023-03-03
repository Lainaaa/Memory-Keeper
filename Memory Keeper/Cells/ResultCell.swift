//
import UIKit

class ResultCell: UITableViewCell {
    
    @IBOutlet var uncorrectWord: UILabel!
    
    func configure( indexPath: Int, words: [Int]){
        var index: Int = 0
        for word in 0..<CoreDataManager.shared.words.count{
            if words[indexPath] == CoreDataManager.shared.words[word].id{
                index = word
            }
        }
        uncorrectWord.text = ("\(indexPath + 1). \(CoreDataManager.shared.words[index].eng!) - \(CoreDataManager.shared.words[index].ru!)")
    }
}
