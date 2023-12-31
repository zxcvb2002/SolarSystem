//
//  Planet.swift
//  SolarSystem
//
//  Created by 드즈 on 8/16/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct Planet: View {
    @Environment(\.dismissWindow) private var dismissWindow
    
    var body: some View {
        ZStack {
            RealityView { content in
                if let scene = try? await Entity(named: "Planet", in: realityKitContentBundle) {
                    content.add(scene)
                }
            }
            .gesture(TapGesture().targetedToAnyEntity().onEnded ({ value in
                let timer = Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { timer in
                    
                    var transform = value.entity.transform
                    
                    let radians = 90.0 * Float.pi / 180.0
                    transform.rotation *= simd_quatf(angle: radians, axis: SIMD3<Float>(1,0,0))
                    
                    value.entity.move(
                        to: transform,
                        relativeTo: nil,
                        duration: 3,
                        timingFunction: .linear
                    )
                }
                timer.fire()
            }))
            .onAppear {
                dismissWindow(id: "window")
            }
            Background()
        }
    }
}

#Preview {
    Planet()
        .previewLayout(.sizeThatFits)
}
