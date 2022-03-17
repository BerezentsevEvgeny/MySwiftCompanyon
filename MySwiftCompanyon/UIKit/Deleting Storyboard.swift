//
//  Deleting Storyboard.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 26.07.2021.
//

import UIKit

// New versions
// Удаляем вкладку MainStoryboard и сам файл, в info.plist -> ApplicationSceneManifest удалить StoryboardName

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = UIViewController()
        window.makeKeyAndVisible()
        self.window = window
    }
}


// Old versions
//Удаляем SceneDelegate и ApplicationSceneManifest в info.plist

class AppDelegatE: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = UIViewController()
        window.makeKeyAndVisible()
        
        return true
    }
}
