//
//  AppNetworkConstants.swift
//  swift-api-cycle
//
//  Created by Humayun Sohail on 1/13/17.
//  Copyright © 2017 Humayun Sohail. All rights reserved.
//

import Foundation
import Alamofire

enum OnebyteNetworkRequest: URLRequestConvertible {
    static var baseURLString: String!
    static var OAuthToken: String?
    static var method: Alamofire.HTTPMethod!
    static var path: String?
    
    static var parameters: [String : String]?
    
    static var headers: [String : String]?

    case InitiateRequest()

    func asURLRequest() throws -> URLRequest {
        let url = URL(string: OnebyteNetworkRequest.baseURLString)!
        var urlRequest = URLRequest(url: url.appendingPathComponent(OnebyteNetworkRequest.path!))
        urlRequest.httpMethod = OnebyteNetworkRequest.method.rawValue

        urlRequest.allHTTPHeaderFields = OnebyteNetworkRequest.headers
        return try Alamofire.URLEncoding.default.encode(urlRequest, with: OnebyteNetworkRequest.parameters)
    }
}
