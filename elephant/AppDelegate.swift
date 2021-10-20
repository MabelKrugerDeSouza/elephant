//
//  AppDelegate.swift
//  elephant
//
//  Created by Mabel Kruger de Souza on 18/10/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = UINavigationController(rootViewController: ViewController())
        self.window?.makeKeyAndVisible()
        
//        self.window = UIWindow(frame: UIScreen.main.bounds) //-> tem tudo referente a tela de um dispositivo iphone
//        self.window?.rootViewController = ViewController() //-> fala qual controller é a principal
//        self.window?.makeKeyAndVisible() //-> vai deixar ela visible, para que as alteracoes feitas sejam mostradas
//
        return true
    }
}

