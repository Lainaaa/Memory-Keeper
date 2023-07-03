import UIKit
import CoreData

class CoreDataManager{
    
    let context: NSManagedObjectContext
    
    //MARK: init
    private init(){
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        context = appDelegate.persistentContainer.viewContext
        fetchWords()
        fetchQuizzes()
    }
    
    static let shared = CoreDataManager()
    
    //MARK: - WordEntity
    
    var words: [WordEntity] = []
    
    //MARK: fetchWords
    
    func fetchWords(){
        let fetchRequest: NSFetchRequest<WordEntity> = WordEntity.fetchRequest()
        
        do {
            let words = try context.fetch(fetchRequest)
            self.words = words
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
    
    //MARK: saveWords
    
    func saveWords(ruWord: String,_ engWord: String){
        
        guard let entity = NSEntityDescription.entity(forEntityName: "WordEntity", in: context) else { return }
        let taskObject = WordEntity(entity: entity, insertInto: context)
        
        taskObject.setValue(ruWord, forKey: "ru")
        taskObject.eng = engWord
        taskObject.id = Int64(words.count)
        
        do {
            try context.save()
            words.append(taskObject)
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        
        fetchWords()
    }
    
    //MARK: clearAllWordsData
    
    /// Be carefull with it
    func clearAllWordsData(){
        
        do {
            try context.execute(NSBatchDeleteRequest(fetchRequest: NSFetchRequest(entityName: "WordEntity")))
            try context.save()
        } catch let error as NSError {
            print(error.localizedDescription)
        }

        fetchWords()
    }
    
    //MARK: deleteSomeWordsData
    
    func deleteSomeWordsData(_ data: WordEntity){
        do {
            context.delete(data)
            try context.save()
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        fetchWords()
    }
    
    //MARK: - QuizEntity
    
    var quizzes: [QuizEntity] = []
    
    //MARK: saveQuiz
    
    func saveQuiz(from: Int, to: Int, name: String){
        guard let entity = NSEntityDescription.entity(forEntityName: "QuizEntity", in: context) else { return }
        let taskObject = QuizEntity(entity: entity, insertInto: context)
        
        taskObject.setValue(from, forKey: "from")
        taskObject.setValue(to, forKey: "to")
        taskObject.setValue(name, forKey: "name")
        
        do {
            try context.save ()
            quizzes.append(taskObject)
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        fetchQuizzes()
    }
    
    //MARK: fetchQuizzes
    
    func fetchQuizzes(){
        let fetchRequest: NSFetchRequest<QuizEntity> = QuizEntity.fetchRequest()
        
        do {
            let quizzes = try context.fetch(fetchRequest)
            self.quizzes = quizzes
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
    
    //MARK: clearAllQuizData
    
    func clearAllQuizData(){
        
        do {
            try context.execute(NSBatchDeleteRequest(fetchRequest: NSFetchRequest(entityName: "QuizEntity")))
            try context.save()
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        
        fetchQuizzes()
    }
    
    //MARK: deleteSomeQuizData
    
    //Deletes qiuz and words inside this quiz, also move indexes in words
    /// Be carefull with it
    func deleteSomeQuizData(data: QuizEntity, indexNumber: Int){
        // count of words that we should delete, also we need to move indexes
        let count = data.to - data.from + 1
        //deleting words in words[]
        for _ in 1...count{
            for i in 0..<words.count{
                if words[i].id == data.from{
                    deleteSomeWordsData(words[Int(data.from)])
                }
            }
        }
        //move indexes
        for quiz in indexNumber + 0...quizzes.count - 1{
            quizzes[quiz].from = quizzes[quiz].from - count
            quizzes[quiz].to = quizzes[quiz].to - count
        }
        
        do {
            context.delete(data)
            try context.save()
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        fetchQuizzes()
    }
    
    //MARK: addWordsToQuiz
    
    /*As i use tableViewController, I pass indexOfQuis where i want to add word.
    In the top example it is 1. dataWords is data that i want to insert,
    countOfWords means how much words I want to insert and From is index quiz[indexOfQuiz].to .*/
    func addWordsToQuiz(indexOfQuiz: Int,dataWordsRu: String, dataWordsEng: String, countOfWords: Int, indexToInsert: Int){
        
        saveWords(ruWord: dataWordsRu, dataWordsEng)
        words.last?.id = Int64(indexToInsert)
        for word in words{
            if word.id >= indexToInsert{
                    word.id = word.id + 1
            }
        }
        words.last?.id = Int64(indexToInsert)
        
        
        for quiz in indexOfQuiz..<quizzes.count{
            if quiz == indexOfQuiz{
                quizzes[quiz].to = Int64(quizzes[quiz].to + 1)
            }else{
                quizzes[quiz].from = Int64(quizzes[quiz].from + 1)
                quizzes[quiz].to = Int64(quizzes[quiz].to + 1)
            }
        }
        
        
        do {
            try context.save()
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        
    }
}
