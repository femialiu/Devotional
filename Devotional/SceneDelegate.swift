//
//  SceneDelegate.swift
//  Devotional
//
//  Created by Femi Aliu on 04/10/2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = createTabbar()
        window?.makeKeyAndVisible()
        
    }
    
    
    func createTodayNC() -> UINavigationController {
        let todaySymbol = UIImage(systemName: "calendar")
        let todayViewController = TodayViewController()
        todayViewController.title = "Today"
        todayViewController.tabBarItem = UITabBarItem(title: "Today", image: todaySymbol, tag: 0)
        
        return UINavigationController(rootViewController: todayViewController)
    }
    
    
    func createDevotionalsNC() -> UINavigationController {
        let devotionalsSymbol = UIImage(systemName: "books.vertical")
        let devotionalsViewController = DevotionalsViewController()
        devotionalsViewController.title = "Devotionals"
        devotionalsViewController.tabBarItem = UITabBarItem(title: "Devotionals", image: devotionalsSymbol, tag: 1)
        
        return UINavigationController(rootViewController: devotionalsViewController)
    }
    
    
    func createbookmarksNC() -> UINavigationController {
        let bookmarksSymbol = UIImage(systemName: "bookmark")
        let bookmarksViewController = BookmarksViewController()
        bookmarksViewController.title = "Bookmarks"
        bookmarksViewController.tabBarItem = UITabBarItem(title: "Bookmarks", image: bookmarksSymbol, tag: 2)
        
        return UINavigationController(rootViewController: bookmarksViewController)
    }
    
    
    func createMoreTabNC() -> UINavigationController {
        let moreTabNavigationController = MoreTabViewController()
        moreTabNavigationController.title = "More"
        moreTabNavigationController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 3)
        
        return UINavigationController(rootViewController: moreTabNavigationController)
    }
    
    func createTabbar() -> UITabBarController {
        let tabbar = UITabBarController()
        let tabAppearance = UITabBarAppearance() // new line to get former tabbar
        let NCAppearance = UINavigationBarAppearance() // new line to get former tabbar
        UITabBar.appearance().tintColor = .systemRed
        UITabBar.appearance().scrollEdgeAppearance = tabAppearance // new line to get former tabbar
        UINavigationBar.appearance().scrollEdgeAppearance = NCAppearance // new line to get former tabbar
        tabbar.viewControllers = [createTodayNC(), createDevotionalsNC(), createbookmarksNC(), createMoreTabNC()]
        
        return tabbar
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
