
import Foundation

private let SceneDelegateConfig = """

Controller по умолчанию

guard let windowScene = (scene as? UIWindowScene) else { return }
window = UIWindow(windowScene: windowScene)
window?.rootViewController = UINavigationController(rootViewController: ViewController())
window?.makeKeyAndVisible()
}



"""
