import UIKit

class ResultTableViewController: UITableViewController {
    
    var answeredArrayWithMistake: [Int] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Count of wrong answers \(answeredArrayWithMistake.count)"
        navigationItem.hidesBackButton = true
        let button = UIBarButtonItem(title: "Done",
                                     style: .plain, target: self, action: #selector (action))
        navigationItem.rightBarButtonItem = button
    }

    @objc private func action(){
        performSegue(withIdentifier: "showMain", sender: nil)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch tableView {
           case self.tableView:
            return answeredArrayWithMistake.count
            default:
              return 0
           }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultCell", for: indexPath) as! ResultCell
        cell.configure(indexPath: indexPath.row, words: answeredArrayWithMistake)
        return cell
    }
}
