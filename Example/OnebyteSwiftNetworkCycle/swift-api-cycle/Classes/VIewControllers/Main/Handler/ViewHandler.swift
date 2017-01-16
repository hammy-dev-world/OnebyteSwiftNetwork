//
//  ViewHandler.swift
//  swift-api-cycle
//
//  Created by Humayun Sohail on 1/11/17.
//  Copyright © 2017 Humayun Sohail. All rights reserved.
//

import Foundation
import Alamofire

import OnebyteSwiftNetworkCycle

class ViewHandler: NSObject {
    //MARK: Instance Variables
    var viewController: ViewController!
    var view: View!

    //MARK: Init methods
    required init(viewController: ViewController!) {
        self.viewController = viewController
        self.view = self.viewController.viewOutlet
    }
    
    //MARK: Callbacks
    public var didRecieveErrorCallback : ((_ error: Error?) -> Void)?
    public var didReceiveSuccessCallback : ((_ responseObject: AnyObject?) -> Void)?

    //MARK: Public Methods
    public func requestUnauthorizedAPI() -> Void {
        self.handleUnauthorizedAPIRequest()
    }
    
    public func requestAuthorizedAPI() -> Void {
        self.handleAuthorizedAPIRequest()
    }

    //MARK: Private Methods
    //MARK: Requests
    
    private func handleUnauthorizedAPIRequest() -> Void {
        let apiOperation : UnauthorizedAPIOperation = UnauthorizedAPIOperation()
        
        weak var weakSelf = self
        apiOperation.didFinishSuccessfullyCallback = {response in
            weakSelf?.handleSuccessfulAPIRequest(response: response)
            weakSelf?.handleFinishRequest()
        }
        
        apiOperation.didFinishWithErrorCallback = {error in
            weakSelf?.handleFailedAPIRequest(error: error)
            weakSelf?.handleFinishRequest()
        }
        
        OnebyteNetworkOperationQueue.sharedInstance.addOperation(apiOperation)
    }
    
    private func handleAuthorizedAPIRequest() -> Void {
        let apiOperation : AuthorizedAPIOperation = AuthorizedAPIOperation()
        
        weak var weakSelf = self
        apiOperation.didFinishSuccessfullyCallback = {response in
            weakSelf?.handleSuccessfulAPIRequest(response: response)
            weakSelf?.handleFinishRequest()
        }
        
        apiOperation.didFinishWithErrorCallback = {error in
            weakSelf?.handleFailedAPIRequest(error: error)
            weakSelf?.handleFinishRequest()
        }
        
        OnebyteNetworkOperationQueue.sharedInstance.addOperation(apiOperation)
    }

    
    //MARK: Common
    private func handleFinishRequest() -> Void{
        //Common operations for every case
    }
    
    //MARK: Successful
    private func handleSuccessfulAPIRequest(response : AnyObject!) -> Void{
        if self.didReceiveSuccessCallback != nil {
            self.didReceiveSuccessCallback!(response)
        }
    }
    
    //MARK: Error
    private func handleFailedAPIRequest(error : Error!) -> Void{
        if self.didRecieveErrorCallback != nil {
            self.didRecieveErrorCallback!(error)
        }
    }

}
