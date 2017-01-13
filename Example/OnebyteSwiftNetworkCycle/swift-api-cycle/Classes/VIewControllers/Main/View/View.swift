//
//  View.swift
//  swift-api-cycle
//
//  Created by Humayun Sohail on 12/1/16.
//  Copyright © 2016 Humayun Sohail. All rights reserved.
//

import UIKit

class View: UIView {
    //MARK: Callbacks
    public var didPressUnauthorizedCallAPIButtonCallback : (() -> Void)?
    public var didPressAuthorizedCallAPIButtonCallback : (() -> Void)?

    //MARK: Action methods
    @IBAction private func callUnauthorizedAPIButtonTapped(sender : UIButton){
        self.handleUnauthorizedCallAPIButtonTapEvent()
    }
    
    @IBAction private func callAuthorizedAPIButtonTapped(sender : UIButton){
        self.handleAuthorizedCallAPIButtonTapEvent()
    }

    //MARK: Private methods
    private func handleUnauthorizedCallAPIButtonTapEvent(){
        if didPressUnauthorizedCallAPIButtonCallback != nil {
            didPressUnauthorizedCallAPIButtonCallback!()
        }
    }
    
    private func handleAuthorizedCallAPIButtonTapEvent(){
        if didPressAuthorizedCallAPIButtonCallback != nil {
            didPressAuthorizedCallAPIButtonCallback!()
        }
    }

}
