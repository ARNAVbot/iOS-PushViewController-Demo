//
//  UCLogObject.swift
//  PassingDataDemo
//
//  Created by Arnav Agarwal on 30/05/22.
//

import Foundation


public class UCLogObject {
    
    enum Constants {
        static let clientID: String = EventLogManager.shared.appFlag ?? ""
    }
    
    private var clientId = Constants.clientID
    
    public func getClientId() -> String {
        return self.clientId
    }
    
}
