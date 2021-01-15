//
//  Textures.swift
//  Engine
//
//  Created by Greger Sundvall on 2021-01-14.
//

public enum Texture: String, CaseIterable {
    case wall, wall2
    case wallGreenish, wallGreenish2
    case wallArt, wallArt2
    case floor
    case floorLava
    case ceiling
}

public struct Textures {
    private let  textures: [Texture: Bitmap]
}

public extension Textures {
    init(loader: (String) -> Bitmap) {
        var textures = [Texture: Bitmap]()
        for texture in Texture.allCases {
            textures[texture] = loader(texture.rawValue)
        }
        self.init(textures: textures)
    }
    
    subscript(_ texture: Texture) -> Bitmap {
        return textures[texture]!
    }
}
