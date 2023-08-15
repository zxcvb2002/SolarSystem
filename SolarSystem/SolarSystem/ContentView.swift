//
//  ContentView.swift
//  SolarSystem
//
//  Created by 드즈 on 8/16/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
//    @Environment(\.openWindow) var openWindow
//    @Environment(\.dismissWindow) var dismissWindow
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
//    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace
    
    var body: some View {
        VStack {
            Color.clear
//            Button("Appear") {
//                Task {
//                    await openImmersiveSpace(id: "system")
//                }
//            }
        }
        .onAppear {
            Task {
                await openImmersiveSpace(id: "system")
            }
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
