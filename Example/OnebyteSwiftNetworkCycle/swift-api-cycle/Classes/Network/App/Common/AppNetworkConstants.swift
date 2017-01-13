//
//  AppNetworkConstants.swift
//  swift-api-cycle
//
//  Created by Humayun Sohail on 1/13/17.
//  Copyright © 2017 Humayun Sohail. All rights reserved.
//

import Foundation

struct AppNetworkConstants {
    static let kBaseURLString = "http://api.kuks59.com/";
    
    struct AppNetworkUserCalls {
        static let kPhoneNumberVerification = "api/v1/phone";
        static let kRestaurants = "api/v1/restaurants";
    }

    struct AppNetworkStatusCodes {
        static let kNoInternerAccess = -1004;
    }

}
