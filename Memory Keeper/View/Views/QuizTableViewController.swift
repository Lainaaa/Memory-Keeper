import UIKit

class QuizTableViewController: UITableViewController{
    
    //TODO: reverse
    //MARK: viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        CoreDataManager.shared.clearAllQuizData()
//        CoreDataManager.shared.clearAllWordsData()
//
//        CoreDataManager.shared.saveWords(ruWord: "обязательство", "obligation")
//        CoreDataManager.shared.saveWords(ruWord: "персонаж", "character")
//        CoreDataManager.shared.saveWords(ruWord: "выборы", "election")
//        CoreDataManager.shared.saveWords(ruWord: "с тех пор", "ever since")
//        CoreDataManager.shared.saveWords(ruWord: "фургон", "van")
//        CoreDataManager.shared.saveWords(ruWord: "однако", "however")
//        CoreDataManager.shared.saveWords(ruWord: "осуществлять", "to implement")
//        CoreDataManager.shared.saveWords(ruWord: "пронзить", "to impale")
//        CoreDataManager.shared.saveWords(ruWord: "казалось", "seemed")
//        CoreDataManager.shared.saveWords(ruWord: "возможно", "perhaps")
//        CoreDataManager.shared.saveWords(ruWord: "раздражающий", "frustrating")
//        CoreDataManager.shared.saveWords(ruWord: "рядом", "beside")
//        CoreDataManager.shared.saveWords(ruWord: "глупо", "silly")
//        CoreDataManager.shared.saveWords(ruWord: "производить", "to produce")
//        CoreDataManager.shared.saveWords(ruWord: "молодежь", "youth")
//        CoreDataManager.shared.saveWords(ruWord: "сомнения", "doubt")
//        CoreDataManager.shared.saveWords(ruWord: "понимать", "to realise")
//        CoreDataManager.shared.saveWords(ruWord: "расплющивать", "to flatten")
//        CoreDataManager.shared.saveQuiz(from: 0, to: CoreDataManager.shared.words.count - 1, name: "First page")
//        CoreDataManager.shared.saveWords(ruWord: "соответствующим образом", "appropriately")
//        CoreDataManager.shared.saveWords(ruWord: "договариваться", "to arrange")
//        CoreDataManager.shared.saveWords(ruWord: "распоряжаться", "to dispose")
//        CoreDataManager.shared.saveWords(ruWord: "различать", "to distinict")
//        CoreDataManager.shared.saveWords(ruWord: "независимый", "independent")
//        CoreDataManager.shared.saveWords(ruWord: "предоставлять", "to provide")
//        CoreDataManager.shared.saveWords(ruWord: "гарантировать", "to ensure")
//        CoreDataManager.shared.saveWords(ruWord: "рассматривать", "to consider")
//        CoreDataManager.shared.saveWords(ruWord: "назначать", "to assign")
//        CoreDataManager.shared.saveWords(ruWord: "чувства", "senses")
//        CoreDataManager.shared.saveWords(ruWord: "напоминать", "to remind")
//        CoreDataManager.shared.saveWords(ruWord: "наблюдательный", "observant")
//        CoreDataManager.shared.saveWords(ruWord: "насилие", "violence")
//        CoreDataManager.shared.saveWords(ruWord: "вор", "thief")
//        CoreDataManager.shared.saveWords(ruWord: "убийство", "murder")
//        CoreDataManager.shared.saveWords(ruWord: "кража", "theft")
//        CoreDataManager.shared.saveWords(ruWord: "серьезный", "serious")
//        CoreDataManager.shared.saveQuiz(from: Int(CoreDataManager.shared.quizzes[0].to) + 1, to: CoreDataManager.shared.words.count - 1, name: "Second page")
//        CoreDataManager.shared.saveWords(ruWord: "грабеж", "robbery")
//        CoreDataManager.shared.saveWords(ruWord: "мошенничество", "fraud")
//        CoreDataManager.shared.saveWords(ruWord: "оскорбление", "offence")
//        CoreDataManager.shared.saveWords(ruWord: "безусловно", "certainly")
//        CoreDataManager.shared.saveWords(ruWord: "способный", "capable")
//        CoreDataManager.shared.saveWords(ruWord: "несмотря на это", "in spite of this")
//        CoreDataManager.shared.saveWords(ruWord: "привычный", "fimilar")
//        CoreDataManager.shared.saveWords(ruWord: "происходить", "to occur")
//        CoreDataManager.shared.saveWords(ruWord: "столкновение", "clash")
//        CoreDataManager.shared.saveWords(ruWord: "сущность", "essense")
//        CoreDataManager.shared.saveWords(ruWord: "существенно", "essential")
//        CoreDataManager.shared.saveWords(ruWord: "очевидный", "evident")
//        CoreDataManager.shared.saveWords(ruWord: "противник", "adversary")
//        CoreDataManager.shared.saveWords(ruWord: "собирать", "to gather")
//        CoreDataManager.shared.saveWords(ruWord: "преимущество", "advantage")
//        CoreDataManager.shared.saveWords(ruWord: "вдруг", "suddenly")
//        CoreDataManager.shared.saveWords(ruWord: "таможня", "customs")
//        CoreDataManager.shared.saveWords(ruWord: "очаровательный", "fascinating")
//        CoreDataManager.shared.saveQuiz(from: Int(CoreDataManager.shared.quizzes[1].to) + 1, to: CoreDataManager.shared.words.count - 1, name: "Second page")
//        CoreDataManager.shared.saveWords(ruWord: "личность", "identity")
//        CoreDataManager.shared.saveWords(ruWord: "стеснительный", "shy")
//        CoreDataManager.shared.saveWords(ruWord: "превышать", "to exceed")
//        CoreDataManager.shared.saveWords(ruWord: "запрещенный", "forbidden")
//        CoreDataManager.shared.saveWords(ruWord: "выполнять", "to perform")
//        CoreDataManager.shared.saveWords(ruWord: "применять", "to apply")
//        CoreDataManager.shared.saveWords(ruWord: "наказывать", "to punish")
//        CoreDataManager.shared.saveWords(ruWord: "коренастый", "stocky")
//        CoreDataManager.shared.saveWords(ruWord: "справедливый", "fair")
//        CoreDataManager.shared.saveWords(ruWord: "волнистый", "wary")
//        CoreDataManager.shared.saveWords(ruWord: "несмотря на то что", "although")
//        CoreDataManager.shared.saveWords(ruWord: "питание", "nutrition")
//        CoreDataManager.shared.saveWords(ruWord: "кости", "bones")
//        CoreDataManager.shared.saveWords(ruWord: "семена", "seeds")
//        CoreDataManager.shared.saveWords(ruWord: "мак", "poppy")
//        CoreDataManager.shared.saveWords(ruWord: "углеводы", "carbohydrate")
//        CoreDataManager.shared.saveWords(ruWord: "клетка", "cells")
//        CoreDataManager.shared.saveQuiz(from: Int(CoreDataManager.shared.quizzes[2].to) + 1, to: CoreDataManager.shared.words.count - 1, name: "Third page")
//        CoreDataManager.shared.saveWords(ruWord: "травы", "herbs")
//        CoreDataManager.shared.saveWords(ruWord: "урожай", "crops")
//        CoreDataManager.shared.saveWords(ruWord: "пшеница", "wheat")
//        CoreDataManager.shared.saveWords(ruWord: "мусор", "junk")
//        CoreDataManager.shared.saveWords(ruWord: "газировка", "soda")
//        CoreDataManager.shared.saveWords(ruWord: "собирать", "gathering")
//        CoreDataManager.shared.saveWords(ruWord: "широкий", "wide")
//        CoreDataManager.shared.saveWords(ruWord: "изобретено", "invented")
//        CoreDataManager.shared.saveWords(ruWord: "катастрофический", "disastrous")
//        CoreDataManager.shared.saveWords(ruWord: "распространять", "to spread")
//        CoreDataManager.shared.saveWords(ruWord: "слегка", "slightly")
//        CoreDataManager.shared.saveWords(ruWord: "тело", "heat")
//        CoreDataManager.shared.saveWords(ruWord: "тонкий", "thin")
//        CoreDataManager.shared.saveWords(ruWord: "сокращать", "to shrink")
//        CoreDataManager.shared.saveWords(ruWord: "далее", "further")
//        CoreDataManager.shared.saveWords(ruWord: "человечество", "mankind")
//        CoreDataManager.shared.saveWords(ruWord: "существо", "creature")
//        CoreDataManager.shared.saveQuiz(from: Int(CoreDataManager.shared.quizzes[3].to) + 1, to: CoreDataManager.shared.words.count - 1, name: "Fourth page")
//        CoreDataManager.shared.saveWords(ruWord: "развлечение", "entertainment")
//        CoreDataManager.shared.saveWords(ruWord: "предоставлять", "to provide")
//        CoreDataManager.shared.saveWords(ruWord: "предки", "ancestors")
//        CoreDataManager.shared.saveWords(ruWord: "лентяй", "a couch potato")
//        CoreDataManager.shared.saveWords(ruWord: "потомки", "descendants")
//        CoreDataManager.shared.saveWords(ruWord: "хранить", "to store")
//        CoreDataManager.shared.saveWords(ruWord: "жить за счет", "to living off")
//        CoreDataManager.shared.saveWords(ruWord: "повествование", "narrative")
//        CoreDataManager.shared.saveWords(ruWord: "плыть", "to sail")
//        CoreDataManager.shared.saveWords(ruWord: "монах", "monk")
//        CoreDataManager.shared.saveWords(ruWord: "наказывать", "to punish")
//        CoreDataManager.shared.saveWords(ruWord: "через", "across")
//        CoreDataManager.shared.saveWords(ruWord: "получать", "to fetch")
//        CoreDataManager.shared.saveWords(ruWord: "шея", "neck")
//        CoreDataManager.shared.saveWords(ruWord: "торопиться", "to rush")
//        CoreDataManager.shared.saveWords(ruWord: "рев", "roar")
//        CoreDataManager.shared.saveQuiz(from: Int(CoreDataManager.shared.quizzes[4].to) + 1, to: CoreDataManager.shared.words.count - 1, name: "Fifth page")
//        CoreDataManager.shared.saveWords(ruWord: "в направлении", "towards")
//        CoreDataManager.shared.saveWords(ruWord: "торопиться", "to hurry")
//        CoreDataManager.shared.saveWords(ruWord: "верно", "indeed")
//        CoreDataManager.shared.saveWords(ruWord: "наблюдения", "sightings")
//        CoreDataManager.shared.saveWords(ruWord: "конкретный", "particular")
//        CoreDataManager.shared.saveWords(ruWord: "предупреждать", "to warn")
//        CoreDataManager.shared.saveWords(ruWord: "ползти", "crawle")
//        CoreDataManager.shared.saveWords(ruWord: "убогий", "miserable")
//        CoreDataManager.shared.saveWords(ruWord: "довольно", "quite")
//        CoreDataManager.shared.saveWords(ruWord: "порыв ветра", "gust")
//        CoreDataManager.shared.saveWords(ruWord: "дуть", "to blow")
//        CoreDataManager.shared.saveWords(ruWord: "дышать", "to breath")
//        CoreDataManager.shared.saveWords(ruWord: "репетиция", "rehearsal")
//        CoreDataManager.shared.saveWords(ruWord: "парик", "wig")
//        CoreDataManager.shared.saveWords(ruWord: "населять", "to populate")
//        CoreDataManager.shared.saveWords(ruWord: "выполнять", "to execute")
//        CoreDataManager.shared.saveWords(ruWord: "переход", "transition")
//        CoreDataManager.shared.saveWords(ruWord: "остерегаться", "beware")
//        CoreDataManager.shared.saveQuiz(from: Int(CoreDataManager.shared.quizzes[5].to) + 1, to: CoreDataManager.shared.words.count - 1, name: "Sixth page")
//        CoreDataManager.shared.saveWords(ruWord: "сумма", "amount")
//        CoreDataManager.shared.saveWords(ruWord: "ругаться", "to swear")
//        CoreDataManager.shared.saveWords(ruWord: "обработать", "to handle")
//        CoreDataManager.shared.saveWords(ruWord: "делегировать", "to delegate")
//        CoreDataManager.shared.saveWords(ruWord: "учетные данные", "credential")
//        CoreDataManager.shared.saveWords(ruWord: "связанные с", "related")
//        CoreDataManager.shared.saveWords(ruWord: "обозначать", "to denote")
//        CoreDataManager.shared.saveWords(ruWord: "извлекать", "to retrieve")
//        CoreDataManager.shared.saveWords(ruWord: "запрос", "query")
//        CoreDataManager.shared.saveWords(ruWord: "озобретать", "to invente")
//        CoreDataManager.shared.saveWords(ruWord: "вспомнить все", "total recall")
//        CoreDataManager.shared.saveWords(ruWord: "примерь", "try on")
//        CoreDataManager.shared.saveWords(ruWord: "брать отгул", "take off")
//        CoreDataManager.shared.saveWords(ruWord: "расстягивать", "to strech")
//        CoreDataManager.shared.saveWords(ruWord: "запад", "west")
//        CoreDataManager.shared.saveWords(ruWord: "восток", "east")
//        CoreDataManager.shared.saveWords(ruWord: "север", "north")
//        CoreDataManager.shared.saveWords(ruWord: "юг", "south")
//        CoreDataManager.shared.saveQuiz(from: Int(CoreDataManager.shared.quizzes[6].to) + 1, to: CoreDataManager.shared.words.count - 1, name: "Seventh page")
//        CoreDataManager.shared.saveWords(ruWord: "сохранять", "to preserve")
//        CoreDataManager.shared.saveWords(ruWord: "останки", "remains")
//        CoreDataManager.shared.saveWords(ruWord: "заражать", "to infecte")
//        CoreDataManager.shared.saveWords(ruWord: "оккупировать", "to invade")
//        CoreDataManager.shared.saveWords(ruWord: "вторгаться", "to intrude")
//        CoreDataManager.shared.saveWords(ruWord: "достигать", "to achieve")
//        CoreDataManager.shared.saveWords(ruWord: "несмотря на", "despite")
//        CoreDataManager.shared.saveWords(ruWord: "искать", "to look up")
//        CoreDataManager.shared.saveWords(ruWord: "заглядывать", "to look into")
//        CoreDataManager.shared.saveWords(ruWord: "удалось", "successed")
//        CoreDataManager.shared.saveWords(ruWord: "покорять", "conquer")
//        CoreDataManager.shared.saveWords(ruWord: "упорство", "persistance")
//        CoreDataManager.shared.saveWords(ruWord: "кукуруза", "maize")
//        CoreDataManager.shared.saveWords(ruWord: "основная диета", "staple diet")
//        CoreDataManager.shared.saveWords(ruWord: "расти", "to grow")
//        CoreDataManager.shared.saveWords(ruWord: "бобы", "beans")
//        CoreDataManager.shared.saveWords(ruWord: "поездка", "journey")
//        CoreDataManager.shared.saveWords(ruWord: "путешествие", "vojage")
//        CoreDataManager.shared.saveQuiz(from: Int(CoreDataManager.shared.quizzes[7].to) + 1, to: CoreDataManager.shared.words.count - 1, name: "Eighth page")
//        CoreDataManager.shared.saveWords(ruWord: "отложить", "to put off")
//        CoreDataManager.shared.saveWords(ruWord: "принимать", "to take up")
//        CoreDataManager.shared.saveWords(ruWord: "терпеть", "tolerante")
//        CoreDataManager.shared.saveWords(ruWord: "мириться", "to put up")
//        CoreDataManager.shared.saveWords(ruWord: "подводить", "to let down")
//        CoreDataManager.shared.saveWords(ruWord: "провалиться сквозь", "to fell through")
//        CoreDataManager.shared.saveWords(ruWord: "учреждать", "to establish")
//        CoreDataManager.shared.saveWords(ruWord: "рассматривать", "to consider")
//        CoreDataManager.shared.saveWords(ruWord: "значительно", "considerably")
//        CoreDataManager.shared.saveWords(ruWord: "иностранный", "foreign")
//        CoreDataManager.shared.saveWords(ruWord: "бунтовать", "to rebel")
//        CoreDataManager.shared.saveWords(ruWord: "дворяне", "noblemen")
//        CoreDataManager.shared.saveWords(ruWord: "обезглавить", "to behead")
//        CoreDataManager.shared.saveWords(ruWord: "справедливый", "justice")
//        CoreDataManager.shared.saveWords(ruWord: "долг", "duty")
//        CoreDataManager.shared.saveWords(ruWord: "исследовать", "to examine")
//        CoreDataManager.shared.saveWords(ruWord: "вовлекать", "to involve")
//        CoreDataManager.shared.saveWords(ruWord: "расширять", "to expand")
//        CoreDataManager.shared.saveQuiz(from: Int(CoreDataManager.shared.quizzes[8].to) + 1, to: CoreDataManager.shared.words.count - 1, name: "Ninth page")
//        CoreDataManager.shared.saveWords(ruWord: "следовательно", "therefore")
//        CoreDataManager.shared.saveWords(ruWord: "свист", "whizz")
//        CoreDataManager.shared.saveWords(ruWord: "парить", "soar")
//        CoreDataManager.shared.saveWords(ruWord: "взрыв", "explosion")
//        CoreDataManager.shared.saveWords(ruWord: "медсестры", "nurses")
//        CoreDataManager.shared.saveWords(ruWord: "юристы", "lawyers")
//        CoreDataManager.shared.saveWords(ruWord: "организация", "arranging")
//        CoreDataManager.shared.saveWords(ruWord: "множество", "plenty")
//        CoreDataManager.shared.saveWords(ruWord: "экипаж", "crew")
//        CoreDataManager.shared.saveWords(ruWord: "полностью", "entirely")
//        CoreDataManager.shared.saveWords(ruWord: "конечно", "certainly")
//        CoreDataManager.shared.saveWords(ruWord: "удовлетворение", "satisfaction")
//        CoreDataManager.shared.saveWords(ruWord: "отношение", "attitude")
//        CoreDataManager.shared.saveWords(ruWord: "яркий", "bright")
//        CoreDataManager.shared.saveWords(ruWord: "бедствия", "disasters")
//        CoreDataManager.shared.saveWords(ruWord: "наводнения", "floods")
//        CoreDataManager.shared.saveWords(ruWord: "ураганы", "hurricanes")
//        CoreDataManager.shared.saveWords(ruWord: "незнакомцы", "stangers")
//        CoreDataManager.shared.saveQuiz(from: Int(CoreDataManager.shared.quizzes[9].to) + 1, to: CoreDataManager.shared.words.count - 1, name: "Tenth page")
//        CoreDataManager.shared.saveWords(ruWord: "приносить", "bring")
//        CoreDataManager.shared.saveWords(ruWord: "позади", "behind")
//        CoreDataManager.shared.saveWords(ruWord: "помолвка", "engagement")
//        CoreDataManager.shared.saveWords(ruWord: "светлый", "bright")
//        CoreDataManager.shared.saveWords(ruWord: "бить", "to strike")
//        CoreDataManager.shared.saveWords(ruWord: "подбородок", "chin")
//        CoreDataManager.shared.saveWords(ruWord: "нюхать", "to nuzzle")
//        CoreDataManager.shared.saveWords(ruWord: "грудь", "breast")
//        CoreDataManager.shared.saveWords(ruWord: "мерзкий", "vile")
//        CoreDataManager.shared.saveWords(ruWord: "стекло", "glass")
//        CoreDataManager.shared.saveWords(ruWord: "предотвращять", "to prevent")
//        CoreDataManager.shared.saveWords(ruWord: "водоворот", "swirl")
//        CoreDataManager.shared.saveWords(ruWord: "песчаный", "gritty")
//        CoreDataManager.shared.saveWords(ruWord: "коридор", "hallway")
//        CoreDataManager.shared.saveWords(ruWord: "варить", "to boil")
//        CoreDataManager.shared.saveWords(ruWord: "капуста", "cabbage")
//        CoreDataManager.shared.saveWords(ruWord: "ковер", "mat")
//        CoreDataManager.shared.saveWords(ruWord: "тряпка", "rag")
//        CoreDataManager.shared.saveQuiz(from: Int(CoreDataManager.shared.quizzes[10].to) + 1, to: CoreDataManager.shared.words.count - 1, name: "Eleventh page")
//        CoreDataManager.shared.saveWords(ruWord: "в помещении", "indoor")
//        CoreDataManager.shared.saveWords(ruWord: "лавировать", "to tack")
//        CoreDataManager.shared.saveWords(ruWord: "изобразить", "to depict")
//        CoreDataManager.shared.saveWords(ruWord: "громадный", "enormous")
//        CoreDataManager.shared.saveWords(ruWord: "грубо", "ruggedly")
//        CoreDataManager.shared.saveWords(ruWord: "прочный", "rugged")
//        CoreDataManager.shared.saveWords(ruWord: "красивый", "hand-some")
//        CoreDataManager.shared.saveWords(ruWord: "поднимать", "to lift")
//        CoreDataManager.shared.saveWords(ruWord: "редко", "seldom")
//        CoreDataManager.shared.saveWords(ruWord: "язва", "ulcer")
//        CoreDataManager.shared.saveWords(ruWord: "пристально глядеть", "to gaze")
//        CoreDataManager.shared.saveWords(ruWord: "подпись", "caption")
//        CoreDataManager.shared.saveWords(ruWord: "над", "above")
//        CoreDataManager.shared.saveWords(ruWord: "под", "below")
//        CoreDataManager.shared.saveWords(ruWord: "продолговатый", "oblong")
//        CoreDataManager.shared.saveWords(ruWord: "притуплять", "to dull")
//        CoreDataManager.shared.saveWords(ruWord: "поверхность", "surface")
//        CoreDataManager.shared.saveQuiz(from: Int(CoreDataManager.shared.quizzes[11].to) + 1, to: CoreDataManager.shared.words.count - 1, name: "Twelfth page")
//        CoreDataManager.shared.saveWords(ruWord: "в некотором роде", "somewhat")
//        CoreDataManager.shared.saveWords(ruWord: "затонуть", "sank")
//        CoreDataManager.shared.saveWords(ruWord: "закрыть", "to shut")
//        CoreDataManager.shared.saveWords(ruWord: "выключить", "to shut off")
//        CoreDataManager.shared.saveWords(ruWord: "хрупкий", "frail")
//        CoreDataManager.shared.saveWords(ruWord: "просто", "merely")
//        CoreDataManager.shared.saveWords(ruWord: "подчеркнутый", "empasizes")
//        CoreDataManager.shared.saveWords(ruWord: "комбинизон", "overall")
//        CoreDataManager.shared.saveWords(ruWord: "грубый", "coarse")
//        CoreDataManager.shared.saveWords(ruWord: "тупой", "blunt")
//        CoreDataManager.shared.saveWords(ruWord: "бритdа", "razor")
//        CoreDataManager.shared.saveWords(ruWord: "форма", "shape")
//        CoreDataManager.shared.saveWords(ruWord: "совершить", "to commit")
//        CoreDataManager.shared.saveWords(ruWord: "хозяйство", "household")
//        CoreDataManager.shared.saveWords(ruWord: "техника", "appliances")
//        CoreDataManager.shared.saveWords(ruWord: "экипаж", "crew")
//        CoreDataManager.shared.saveWords(ruWord: "справиться", "to cope")
//        CoreDataManager.shared.saveWords(ruWord: "служанка", "maid")
//        CoreDataManager.shared.saveQuiz(from: Int(CoreDataManager.shared.quizzes[12].to) + 1, to: CoreDataManager.shared.words.count - 1, name: "Thirteenth page")
//        CoreDataManager.shared.saveWords(ruWord: "служанка", "tebious")
//        CoreDataManager.shared.saveWords(ruWord: "работа по дому", "chores")
//        CoreDataManager.shared.saveWords(ruWord: "связать", "to tie")
//        CoreDataManager.shared.saveWords(ruWord: "снаряженный", "outfit")
//        CoreDataManager.shared.saveWords(ruWord: "гардероб", "wardrobe")
//        CoreDataManager.shared.saveWords(ruWord: "постоянно", "permanently")
//        CoreDataManager.shared.saveWords(ruWord: "покрытый", "covered")
//        CoreDataManager.shared.saveWords(ruWord: "слой", "layer")
//        CoreDataManager.shared.saveWords(ruWord: "зрелый", "mature")
//        CoreDataManager.shared.saveWords(ruWord: "характеристика", "property")
//        CoreDataManager.shared.saveWords(ruWord: "выгода", "benefit")
//        CoreDataManager.shared.saveWords(ruWord: "обвинять", "to blame")
//        CoreDataManager.shared.saveWords(ruWord: "недостаток", "lack")
//        CoreDataManager.shared.saveWords(ruWord: "отказываться от", "deny")
//        CoreDataManager.shared.saveWords(ruWord: "недостатки", "drawbacks")
//        CoreDataManager.shared.saveQuiz(from: Int(CoreDataManager.shared.quizzes[13].to) + 1, to: CoreDataManager.shared.words.count - 1, name: "Fouthteenth page")

        navigationItem.title = "\(CoreDataManager.shared.quizzes.count) quizzes"
    }

    //MARK: - tableViews
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch tableView {
           case self.tableView:
            return CoreDataManager.shared.quizzes.count
            default:
              return 0
           }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuizCell", for: indexPath) as! QuizCell
        cell.configure(indexPath.row)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let editAction = UIContextualAction(style: .normal, title: "Add"){(_,_, completionHandler) in
            self.performSegue(withIdentifier: "editQuiz", sender: indexPath)
        }
        let deleteAction = UIContextualAction(style: .destructive, title: "Remove"){(_,_, completionHandler) in
            CoreDataManager.shared.deleteSomeQuizData(data: CoreDataManager.shared.quizzes[indexPath.row], indexNumber: indexPath.row)
            self.navigationItem.title = "\(CoreDataManager.shared.quizzes.count) quizzes"
            tableView.reloadData()
        }
        return UISwipeActionsConfiguration(actions: [deleteAction, editAction])
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "showQuiz", sender: self)
    }
    
    //MARK: - Prepare for segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "editQuiz" {
            let destination = segue.destination as? AddWordsViewController
               if let indexPath = sender as? IndexPath {
                   destination?.setNameOfQuiz = CoreDataManager.shared.quizzes[indexPath.row].name
                   destination?.indexForEditingQuiz = indexPath.row
                   destination?.statusOfNextTopicButtonIsPressed = true
               }
           }
           if segue.identifier == "showQuiz" {
               guard let indexPath = tableView.indexPathForSelectedRow,
                     let destination = segue.destination as? QuizViewController
               else {return}
               destination.from = Int(CoreDataManager.shared.quizzes[indexPath.row].from)
               destination.to = Int(CoreDataManager.shared.quizzes[indexPath.row].to)
           }
    }
}