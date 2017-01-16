//
//  OnebyteNetworkOperationBase+Subclassing.swift
//  swift-api-cycle
//
//  Created by Humayun Sohail on 1/12/17.
//  Copyright © 2017 Humayun Sohail. All rights reserved.
//

import Foundation

extension OnebyteNetworkOperationBase {
    //MARK: Public methods
    open func handleDidFinishedWithResponse(response: AnyObject!) -> Void{
        // To be overriden
    }
    
    open func handleDidFinishedUpdatingVoucherWithResponse(response: AnyObject!) -> Void{
        // To be overriden
    }
    
    open func handleDidFinishedWithError(error: Error!) -> Void{
        // To be overriden
    }
    
    open func handleDidFinishedCommon() -> Void{
        // To be overriden
    }
    
    open func safeCallDidFinishWithErrorCallback(error: Error!) -> Void{
        DispatchQueue.main.async {
            if self.didFinishWithErrorCallback != nil {
                self.didFinishWithErrorCallback!(error)
            }
        }
    }
    
    open func safeCallDidFinishSuccessfullyCallback(responseObject: AnyObject!) -> Void{
        DispatchQueue.main.async {
            if self.didFinishSuccessfullyCallback != nil {
                self.didFinishSuccessfullyCallback!(responseObject)
            }
        }
    }
}
