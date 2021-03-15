//
//  AppDelegate.swift
//  TestSquare
//
//  Created by Дмитрий Григорьев on 13.03.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        if #available(iOS 13, *) {
        }else {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = MainViewController()
            let square = Square(color: .red, sideSize: 100, position: Position(x: 0, y: 0))
        let viewModel = MainViewModel()
            viewModel.square = Box(square)
        viewController.viewModel = viewModel
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        }
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

