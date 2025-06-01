//
//  RouterDestination.swift
//  Env
//
//  Created by Tom Knighton on 02/02/2025.
//

import AppRouter

public enum RouterDestination: DestinationType {
    case home
    
    public static func from(path: String, fullPath: [String], parameters: [String : String]) -> RouterDestination? {
        return nil
    }
}

public enum SheetDestination: SheetType {
    
    public var id: Int { hashValue }
}
