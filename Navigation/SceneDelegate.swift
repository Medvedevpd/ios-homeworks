//
//  SceneDelegate.swift
//  Navigation
//
//  Created by Pavel Medvedev on 27.08.2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let winScene = (scene as? UIWindowScene) else { return }
    
        let window = UIWindow(windowScene: winScene)
        
        //создаем экземпляр tapBar
        let tabBarController = UITabBarController()
        
        //создаем 2 контроллерам экзем
        let feedVC = FeedViewController()
       
        //по заданию изменяет переход на LoGin вместо ProfilrViewController
       // let profileVC = ProfileViewController()
        
        let logInVC = LogInViewController()
        
        //прописываем экземпляры 2 тапбаров в NavController
        let feedNavigationController = UINavigationController(rootViewController: feedVC)
        
        let profileNavigationController = UINavigationController(rootViewController: logInVC)
        
        //создаем массив для их объединения
        tabBarController.viewControllers = [feedNavigationController, profileNavigationController]
        
        //указываем название, присваиваем картинку
        feedNavigationController.tabBarItem = UITabBarItem(title: "Feed", image: UIImage(systemName: "newspaper"), tag: 0)
        
        profileNavigationController.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.fill"), tag: 1)
                
        //указываем, что рут контроллером является созданный экземпляр тапбара
        window.rootViewController = tabBarController
        
        window.makeKeyAndVisible()
        
        self.window = window
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

