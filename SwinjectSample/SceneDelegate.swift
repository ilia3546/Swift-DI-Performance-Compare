import UIKit
import Swinject
import Components

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    let container = Container()

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else { return }
        registerAllServices(in: container)
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = ViewController(container: container)
        self.window = window
        window.makeKeyAndVisible()
    }
}
