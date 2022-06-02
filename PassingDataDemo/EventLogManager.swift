//
//  EventLogManager.swift
//  PassingDataDemo
//
//  Created by Arnav Agarwal on 30/05/22.
//

import Foundation

public final class EventLogManager {
    public static let shared: EventLogManager = EventLogManager.init()
    
    
    private(set) var appFlag: String?
    
    public func setDefaultLogProperties(appFlag: String) {
        if self.appFlag == nil {
            self.appFlag = appFlag
        }
    }
    
    public func getDefualtProp() -> String {
        return self.appFlag ?? "empty"
    }
}
