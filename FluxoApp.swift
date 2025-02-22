//
//  FluxoApp.swift
//  Fluxo
//
//  Created by Yashrajsinh Jadeja on 2025-02-22.
//

import SwiftUI

@main
struct FluxoApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
