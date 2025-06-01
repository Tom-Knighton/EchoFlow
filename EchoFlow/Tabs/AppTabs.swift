//
//  AppTabs.swift
//  Echo
//
//  Created by Tom Knighton on 02/02/2025.
//

import SwiftUI
import Env
import AppRouter

struct AppTabRootView: View {
    @Environment(EchoFlowRouter.self) private var router
    
    let tab: AppTab
    
    var body: some View {
        @Bindable var router = router
        
        GeometryReader { _ in
            NavigationStack(path: $router[tab]) {
                tab.rootView
                    .withEchoRoutes()
            }
        }
        .ignoresSafeArea()
    }
}

@MainActor
extension AppTab {
    @ViewBuilder
    fileprivate var rootView: some View {
        switch self {
        case .home:
            Text("Hello World")
        }
    }
}
