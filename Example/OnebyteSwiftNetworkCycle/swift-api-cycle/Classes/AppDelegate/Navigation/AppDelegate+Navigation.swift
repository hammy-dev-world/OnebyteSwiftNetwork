//
//  AppDelegate+Navigation.swift
//  swift-api-cycle
//
//  Created by Humayun Sohail on 12/1/16.
//  Copyright © 2016 Humayun Sohail. All rights reserved.
//

import Foundation
import UIKit

extension AppDelegate {
    // MARK: Init
    func initAppWindow() -> Void{
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window!.backgroundColor = UIColor.white
        self.window!.makeKeyAndVisible()
    }
    
    // MARK: Public Methods
    public func configureRootViewController() -> Void{
        let firstViewController : ViewController = ViewController(nibName: "ViewController", bundle: nil)
        let rootNavigationController : UINavigationController = UINavigationController(rootViewController:firstViewController)
        self.window!.rootViewController = rootNavigationController
    }
}
