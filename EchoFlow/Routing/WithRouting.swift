//
//  WithRouting.swift
//  Echo
//
//  Created by Tom Knighton on 04/02/2025.
//

import SwiftUI
import Env

extension View {
    
    public func withEchoRoutes() -> some View {
        navigationDestination(for: RouterDestination.self) { destination in
            switch destination {
            case .home:
                Text("Hello World")
            }
        }
    }
}
