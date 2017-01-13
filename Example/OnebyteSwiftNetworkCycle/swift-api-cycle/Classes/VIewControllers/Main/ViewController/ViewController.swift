//
//  ViewController.swift
//  swift-api-cycle
//
//  Created by Humayun Sohail on 11/15/16.
//  Copyright © 2016 Humayun Sohail. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Outlets
    @IBOutlet weak var viewOutlet: View!
    
    //MARK: Instance Variable
    var handler: ViewHandler!
    
    //MARK: View Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configureHandler()
        self.configureNavigationBar()
        self.configureCallbacks()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
    }
    
    //MARK: Private Methods
    //MARK: Handler
    private func configureHandler() -> Void{
        self.handler = ViewHandler(viewController: self)
    }
    
    //MARK: Navigation bar
    private func configureNavigationBar() -> Void{
        self.navigationController?.isNavigationBarHidden = true
    }
    
    //MARK: Callbacks
    private func configureCallbacks() -> Void{
        self.viewOutlet.didPressUnauthorizedCallAPIButtonCallback = {
            self.handleUnauthorizedCallAPIEvent()
        }
        
        self.viewOutlet.didPressAuthorizedCallAPIButtonCallback = {
            self.handleAuthorizedCallAPIEvent()
        }

        self.handler.didReceiveSuccessCallback = {response in
            self.handleSuccessfulRequestEvent(response: response)
        }
        
        self.handler.didRecieveErrorCallback = {error in
            self.handleFailedRequestEvent(error: error)
        }
    }
    
    //MARK: Events
    private func handleUnauthorizedCallAPIEvent() -> Void{
        self.handler.requestUnauthorizedAPI()
    }
    
    private func handleAuthorizedCallAPIEvent() -> Void{
        self.handler.requestAuthorizedAPI()
    }

    private func handleSuccessfulRequestEvent(response : AnyObject!) -> Void {
        print(response)
    }

    private func handleFailedRequestEvent(error : Error!) -> Void {
        print(error)
    }

}

