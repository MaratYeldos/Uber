//
//  UberCloneApp.swift
//  UberClone
//
//  Created by Yeldos Marat on 28.10.2022.
//

import SwiftUI

@main
struct UberCloneApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
    }
}
