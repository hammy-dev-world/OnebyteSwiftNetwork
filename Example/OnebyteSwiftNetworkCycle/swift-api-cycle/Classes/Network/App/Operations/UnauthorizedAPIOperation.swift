//
//  AppAPIOperation.swift
//  swift-api-cycle
//
//  Created by Humayun Sohail on 1/12/17.
//  Copyright © 2017 Humayun Sohail. All rights reserved.
//

import Foundation
import OnebyteSwiftNetworkCycle

class UnauthorizedAPIOperation: OnebyteNetworkOperationBase {
    //MARK: Instance Variables
    
    //MARK: Overridden Methods
    override func start() {
        super.start()
        self.startAPIOperation()
    }
    
    override func handleDidFinishedWithResponse(response: AnyObject!) {
        self.safeCallDidFinishSuccessfullyCallback(responseObject: response)
        self.handleDidFinishedCommon()
    }
    
    override func handleDidFinishedWithError(error: Error!) {
        self.safeCallDidFinishWithErrorCallback(error: error)
    }
    
    //MARK: Private Methods
    
    //MARK: Request
    private func startAPIOperation() {
        OnebyteNetworkSessionManager.sharedInstance.request(AppNetworkManager.unauthorizedNetworkRequest(methodType: .post, path: AppNetworkConstants.AppNetworkUserCalls.kPhoneNumberVerification, parameters: self.createBody()))
            .responseJSON{ response in
            switch response.result {
            case .success(let data):
                self.handleDidFinishedWithResponse(response: data as AnyObject!)
                break
            case .failure(let error):
                self.handleDidFinishedWithError(error: error)
                break
            default:
                break
            }

        }
    }
    
    //MARK: Body
    private func createBody() -> Dictionary<String, String>{
        return ["phoneNumber": "+923004238044"]
    }
    
}

