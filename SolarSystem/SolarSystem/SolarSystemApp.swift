//
//  SolarSystemApp.swift
//  SolarSystem
//
//  Created by 드즈 on 8/16/23.
//

import SwiftUI

@main
struct SolarSystemApp: App {
    @State private var orbitImmersionStyle: ImmersionStyle = .full
    
    var body: some Scene {
        WindowGroup(id: "window") {
            ContentView()
        }
        
        ImmersiveSpace(id: "system") {
            Planet()
        }
        .immersionStyle(selection: $orbitImmersionStyle, in: .full)
    }
}
