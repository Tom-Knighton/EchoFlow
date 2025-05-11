//
//  LoginView.swift
//  Onboarding
//
//  Created by Tom Knighton on 27/01/2025.
//

import SwiftUI
import Env
import API

let symbols = Array(repeating: "arrow.up", count: 150)
let columns = [
    GridItem(.adaptive(minimum: 50))
]

public struct LoginView: View {
    @Environment(\.theme) private var theme
    
    public init() {}
    
    public var body: some View {
        ZStack {
           
            Color(0x131517).ignoresSafeArea()
            
            VStack {
                Spacer()
                VStack(spacing: 16) {
                    Text("Take control of your money")
                        .font(.title.bold())
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("See your spending, forecast cash-flow, and hit your savings goals with smart alerts and AI coaching.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .multilineTextAlignment(.leading)
                    
                    Spacer().frame(height: 0)
                    
                    Button(action: { Task {
                        try await AuthManager().beginOAuthFlow()
                    }}) {
                        Text("Let's Go")
                            .bold()
                            .frame(maxWidth: .infinity)
                            .padding()
                            .foregroundStyle(.white)
                            .background(Color.orange)
                            .clipShape(.rect(cornerRadius: 10))
                    }
                    
                    Spacer().frame(height: 0)
                }
                .padding(16)
                .frame(alignment: .bottom)
                .background(Material.regular)
                .colorScheme(.dark)
                .clipShape(.rect(cornerRadius: 10))
                .padding(.horizontal, 16)
                Spacer().frame(height: 16)
            }
        }
    }
}

#Preview {
    LoginView()
        .applyTheme()
}
