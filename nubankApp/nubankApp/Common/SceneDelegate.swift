//
//  SceneDelegate.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 28/10/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            let navVC = UINavigationController()
            let coordinator = MainCoordinator()
            coordinator.navigationControler = navVC
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = navVC
            window.makeKeyAndVisible()
            self.window = window
            coordinator.start()
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {}

    func sceneDidBecomeActive(_ scene: UIScene) {}

    func sceneWillResignActive(_ scene: UIScene) {}

    func sceneWillEnterForeground(_ scene: UIScene) {}

    func sceneDidEnterBackground(_ scene: UIScene) {}
}
