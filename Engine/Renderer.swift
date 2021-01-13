//
//  Renderer.swift
//  Engine
//
//  Created by Greger Sundvall on 2021-01-13.
//

public struct Renderer {
    public private(set) var bitmap: Bitmap

    public init(width: Int, height: Int) {
        self.bitmap = Bitmap(width: width, height: height, color: .white)
    }
}

public extension Renderer {
    mutating func draw(_ player: Player) {
        bitmap[Int(player.position.x), Int(player.position.y)] = .blue
    }
}
