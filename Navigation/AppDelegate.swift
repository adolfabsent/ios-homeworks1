//
//  AppDelegate.swift
//  Navigation
//
//  Created by Максим Зиновьев on 14.12.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

      var window: UIWindow?


        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            window = UIWindow(frame: UIScreen.main.bounds)
                    let navigationController = UINavigationController()
                    let vc = ProfileViewController()
                    navigationController.setViewControllers([vc], animated: true)
                    window?.rootViewController = navigationController

                    window?.makeKeyAndVisible()

                    return true
        }

        func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
            return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
        }

        func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {

        }

    }
