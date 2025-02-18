//
//  SceneDelegate.swift
//  ChatBotAPP
//
//  Created by Musa Adıtepe on 18.02.2025.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        let chatViewController = ChatViewController()
        let navigationController = UINavigationController(rootViewController: chatViewController)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
} 

