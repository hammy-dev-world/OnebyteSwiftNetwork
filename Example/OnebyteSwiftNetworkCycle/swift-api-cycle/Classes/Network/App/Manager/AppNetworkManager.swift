//
//  AppNetworkManager.swift
//  swift-api-cycle
//
//  Created by Humayun Sohail on 1/13/17.
//  Copyright © 2017 Humayun Sohail. All rights reserved.
//

import Foundation
import Alamofire
import OnebyteSwiftNetworkCycle

class AppNetworkManager {
    //MARK: Class Variables
    static let sharedInstance = AppNetworkManager()

    //MARK: Public Class Methods
    static func unauthorizedNetworkRequest(methodType: Alamofire.HTTPMethod!, path: String?, parameters: [String : String]?) -> OnebyteNetworkRequest{
        OnebyteNetworkRequest.baseURLString = AppNetworkConstants.kBaseURLString
        OnebyteNetworkRequest.path = path
        OnebyteNetworkRequest.method = methodType
        OnebyteNetworkRequest.parameters = parameters
        OnebyteNetworkRequest.headers = nil
        
        return OnebyteNetworkRequest.InitiateRequest()
    }
    
    static func authorizedNetworkRequest(methodType: Alamofire.HTTPMethod!, path: String?, parameters: [String : String]?) -> OnebyteNetworkRequest{
        OnebyteNetworkRequest.baseURLString = AppNetworkConstants.kBaseURLString
        OnebyteNetworkRequest.path = path
        OnebyteNetworkRequest.method = methodType
        OnebyteNetworkRequest.parameters = parameters
        OnebyteNetworkRequest.headers = ["Authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyMiwiaWF0IjoxNDgzMTAyODU0fQ.znMhpuSZDOfJWXczy81hLU5NIdP43lIUTDe8nDnWebo", "Content-Type": "application/json"]
        
        return OnebyteNetworkRequest.InitiateRequest()
    }

}
