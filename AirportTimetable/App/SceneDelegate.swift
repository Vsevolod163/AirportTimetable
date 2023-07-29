//
//  SceneDelegate.swift
//  AirportTimetable
//
//  Created by Vsevolod Lashin on 29.07.2023.
//

import UIKit

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let tabBarController = UITabBarController()
        let navigationDepartureVC = UINavigationController.init(rootViewController: DepartureViewController())
        let navigationArrivalVC = UINavigationController.init(rootViewController: ArrivalViewController())
        
        tabBarController.overrideUserInterfaceStyle = .light
        tabBarController.tabBar.backgroundColor = .systemGray6
        
        navigationDepartureVC.title = "Departure"
        navigationDepartureVC.navigationBar.prefersLargeTitles = true
        navigationArrivalVC.title = "Arrival"
        navigationArrivalVC.navigationBar.prefersLargeTitles = true
    
        tabBarController.viewControllers = [navigationDepartureVC, navigationArrivalVC]
        
        window = UIWindow(windowScene: windowScene)
        window?.makeKeyAndVisible()
        window?.rootViewController = tabBarController
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

