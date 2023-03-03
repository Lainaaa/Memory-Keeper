import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
        
        ///Use when you want to delegate context on another screen(don't forget to init var context: NSManagedObjectContext! in your ViewController)
//        let vc = window?.rootViewController as! ViewController
//        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
//
//        vc.context = context
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }


}

