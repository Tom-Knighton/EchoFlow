//
//  EchoFlowApp.swift
//  EchoFlow
//
//  Created by Tom Knighton on 27/04/2025.
//

import SwiftUI
import API
import Onboarding

@main
struct EchoFlowApp: App {
    
    @State private var isLoading = true
    @State private var isLoggedIn = false
    
    init() {
        loadRocketSimConnect()
    }
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                if isLoading {
                    ProgressView()
                        .progressViewStyle(.circular)
                } else if isLoggedIn {
                    RootView()
                } else {
                    LoginView()
                }
            }
            .applyTheme()
            .task {
                await doLoginWork()
            }
            .onReceive(NotificationCenter.default.publisher(for: .didLogout)) { out in
                self.isLoggedIn = false
            }
            .onReceive(NotificationCenter.default.publisher(for: .didLogin)) { out in
                Task {
                    await doLoginWork()
                }
            }
        }
    }
    
    private func doLoginWork() async {
        let authManager = AuthManager()
        if let credentials = try? await authManager.validToken() {
            isLoggedIn = true
        }
        
//        if let token = try? await authManager.validToken() {
//            isLoggedIn = true
//            print(token)
//        }
//        
        isLoading = false
    }
    
    private func loadRocketSimConnect() {
        #if DEBUG
        guard (Bundle(path: "/Applications/RocketSim.app/Contents/Frameworks/RocketSimConnectLinker.nocache.framework")?.load() == true) else {
            print("Failed to load linker framework")
            return
        }
        print("RocketSim Connect successfully linked")
        #endif
    }
}

