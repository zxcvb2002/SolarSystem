//
//  SolarSystemApp.swift
//  SolarSystem
//
//  Created by 드즈 on 8/16/23.
//

import SwiftUI

@main
struct SolarSystemApp: App {
//    @State private var orbitImmersionStyle: ImmersionStyle = .mixed
    
    var body: some Scene {
        WindowGroup(id: "window") {
            ContentView()
        }
        
        ImmersiveSpace(id: "system") {
            Planet()
        }
    }
}
