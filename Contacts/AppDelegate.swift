//
//  AppDelegate.swift
//  Contacts
//
//  Copyright (c) 2015 Example. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        println("Aplicação carregada")
        return true
    }
    
    func applicationWillResignActive(application: UIApplication) {
        println("Aplicação ficará inativa")
    }
    
    func applicationDidEnterBackground(application: UIApplication) {
        println("Aplicação entrou em background")
    }
    
    func applicationWillEnterForeground(application: UIApplication) {
        println("Aplicação vai entrar em foreground")
    }
    
    func applicationDidBecomeActive(application: UIApplication) {
        println("Aplicação ficou ativa")
    }
    
    func applicationWillTerminate(application: UIApplication) {
        println("Aplicação será finalizada")
    }
}

