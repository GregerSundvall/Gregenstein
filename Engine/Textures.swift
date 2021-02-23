//
//  Textures.swift
//  Engine
//
//  Created by Greger Sundvall on 2021-01-14.
//

public enum TextureEnum: String, CaseIterable {
    case wall, wall2
    case wallGreenish, wallGreenish2
    case wallArt, wallArt2
    case floor
    case floorLava
    case ceiling
    case monster
    case monsterWalk1, monsterWalk2
}

public class Textures {
    
    public var  textures : [TextureEnum: Bitmap]
    
    public init(textures: [TextureEnum: Bitmap]) {
        self.textures = textures
    }
    
    public subscript(_ texture: TextureEnum) -> Bitmap {
        return textures[texture]!
    }

}

public extension Textures {
    
//    init(loader: (String) -> Bitmap) {
//        var textures = [TextureEnum: Bitmap]()
//        for texture in TextureEnum.allCases {
//            textures[texture] = loader(texture.rawValue)
//        }
//        self.init(textures: textures)
//    }

    
}
