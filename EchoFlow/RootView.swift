//
//  ContentView.swift
//  EchoFlow
//
//  Created by Tom Knighton on 27/04/2025.
//

import SwiftUI
import Onboarding
import AppRouter
import API
import Env

struct RootView: View {
    @State private var router = EchoFlowRouter(initialTab: .home)
    
    var body: some View {
        TabView(selection: $router.selectedTab) {
            ForEach(AppTab.allCases) { tab in
                Tab(tab.title, systemImage: tab.icon, value: tab) {
                    AppTabRootView(tab: tab)
                        .tag(tab)
                }
            }
        }
        .sheet(item: $router.presentedSheet) { presentedSheet in
            
        }
        .environment(router)
    }
}

#Preview {
    RootView()
}
