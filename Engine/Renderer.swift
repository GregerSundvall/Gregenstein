//
//  Renderer.swift
//  Engine
//
//  Created by Greger Sundvall on 2021-01-13.
//

public struct Renderer {
    public private(set) var bitmap: Bitmap

    public init(width: Int, height: Int) {
        self.bitmap = Bitmap(width: width, height: height, color: .black)
    }
}

public extension Renderer {
    mutating func draw(_ world: World) {
        let scale = Double(bitmap.height) / world.size.y
        
        //Draw map
        for y in 0 ..< world.map.height {
            for x in 0 ..< world.map.width where world.map[x, y].isWall {
                let rect = Rect(
                min: scale * Vector(x: Double(x), y: Double(y)),
                max: scale * Vector(x: Double(x + 1), y: Double(y + 1))
                )
                bitmap.fill(rect: rect, color: .white)
            }
        }
        
        //Draw player
        var rect = world.player.rect
        rect.min *= scale
        rect.max *= scale
        bitmap.fill(rect: rect, color: .blue)
        
        //bitmap[Int(player.position.x), Int(player.position.y)] = .blue
    }
}
