//
//  AppNetworkConstants.swift
//  swift-api-cycle
//
//  Created by Humayun Sohail on 1/13/17.
//  Copyright © 2017 Humayun Sohail. All rights reserved.
//

import Foundation
import Alamofire

public enum OnebyteNetworkRequest: URLRequestConvertible {
    static public var baseURLString: String!
    static public var OAuthToken: String?
    static public var method: Alamofire.HTTPMethod!
    static public var path: String?
    
    static public var parameters: [String : String]?
    
    static public var headers: [String : String]?
    
    case InitiateRequest()
    
    public func asURLRequest() throws -> URLRequest {
        let url = URL(string: OnebyteNetworkRequest.baseURLString)!
        var urlRequest = URLRequest(url: url.appendingPathComponent(OnebyteNetworkRequest.path!))
        urlRequest.httpMethod = OnebyteNetworkRequest.method.rawValue
        
        urlRequest.allHTTPHeaderFields = OnebyteNetworkRequest.headers
        return try Alamofire.URLEncoding.default.encode(urlRequest, with: OnebyteNetworkRequest.parameters)
    }
}
