//
//  Textures.swift
//  Engine
//
//  Created by Greger Sundvall on 2021-01-14.
//

public enum TextureEnum: String, CaseIterable {
    case wall00, wall01
    case wall10, wall11
    case wall20, wall21
    case wall30, wall31
    case wall40, wall41
    case floor0, floor1
    case ceiling0, ceiling1
    
    case monster
    case monsterWalk1, monsterWalk2
}

public struct Textures {
    private let  textures: [TextureEnum: Bitmap]
}

public extension Textures {
    init(loader: (String) -> Bitmap) {
        var textures = [TextureEnum: Bitmap]()
        for texture in TextureEnum.allCases {
            textures[texture] = loader(texture.rawValue)
        }
        self.init(textures: textures)
    }
    
    subscript(_ texture: TextureEnum) -> Bitmap {
        return textures[texture]!
    }
}
