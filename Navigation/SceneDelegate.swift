import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) { guard let windowScene = (scene as? UIWindowScene) else { return }

        guard let scene = (scene as? UIWindowScene) else { return }

        let window = UIWindow(windowScene: scene)

        let feedViewController = FeedViewController()
        let profileViewController = ProfileViewController()
        let postViewController = PostViewController()

        let usersNavigationController = UINavigationController(rootViewController: feedViewController)
        let profileNavigationController = UINavigationController(rootViewController: profileViewController)

        let tabBarController = UITabBarController()

        tabBarController.viewControllers = [usersNavigationController, profileNavigationController]

        usersNavigationController.tabBarItem.title = "Users"
        usersNavigationController.tabBarItem.image = UIImage(systemName: "person.2")

        profileNavigationController.tabBarItem.title = "Profile"
        profileNavigationController.tabBarItem.image = UIImage(systemName: "person.crop.circle")

        postViewController.navigationItem.rightBarButtonItem?.title = "INFO"


        window.rootViewController = tabBarController
        window.makeKeyAndVisible()

        self.window = window


    }

    func sceneDidDisconnect(_ scene: UIScene) {

    }

    func sceneDidBecomeActive(_ scene: UIScene) {

    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {

    }
}
