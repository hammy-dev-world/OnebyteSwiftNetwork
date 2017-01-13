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
    public func handleDidFinishedWithResponse(response: AnyObject!) -> Void{
        // To be overriden
    }
    
    public func handleDidFinishedUpdatingVoucherWithResponse(response: AnyObject!) -> Void{
        // To be overriden
    }
    
    public func handleDidFinishedWithError(error: Error!) -> Void{
        // To be overriden
    }

    public func handleDidFinishedCommon() -> Void{
        // To be overriden
    }

    public func safeCallDidFinishWithErrorCallback(error: Error!) -> Void{
        DispatchQueue.main.async {
            if self.didFinishWithErrorCallback != nil {
               self.didFinishWithErrorCallback!(error)
            }
        }
    }

    public func safeCallDidFinishSuccessfullyCallback(responseObject: AnyObject!) -> Void{
        DispatchQueue.main.async {
            if self.didFinishSuccessfullyCallback != nil {
                self.didFinishSuccessfullyCallback!(responseObject)
            }
        }
    }
}
