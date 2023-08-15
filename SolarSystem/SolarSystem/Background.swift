//
//  Background.swift
//  SolarSystem
//
//  Created by 드즈 on 8/16/23.
//

import SwiftUI
import Foundation
import RealityKit

struct Background: View {
    var body: some View {
        RealityView { content in
            guard let resource = try? TextureResource.load(named: "Background") else {
                // If the asset isn't available, something is wrong with the app.
                fatalError("Unable to load starfield texture.")
            }
            var material = UnlitMaterial()
            material.color = .init(texture: .init(resource))
            
            // Attach the material to a large sphere.
            let entity = Entity()
            entity.components.set(ModelComponent(
                mesh: .generateSphere(radius: 1000),
                materials: [material]
            ))
            
            // Ensure the texture image points inward at the viewer.
            entity.scale *= .init(x: -1, y: 1, z: 1)

            content.add(entity)
        }
    }
}

//#Preview {
//    Background()
//}
