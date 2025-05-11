//
//  AppTab.swift
//  Env
//
//  Created by Tom Knighton on 02/02/2025.
//

public enum AppTab: String, CaseIterable, Identifiable, Hashable, Sendable {
    case home
    
    public var id: String { rawValue }
    
    public var icon: String {
        switch self {
        case .home: "house"
        }
    }
    
    public var title: String {
        switch self {
        case .home:
            return "Home"
        }
    }
}
