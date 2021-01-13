//
//  Tile.swift
//  Engine
//
//  Created by Greger Sundvall on 2021-01-13.
//


public enum Tile: Int, Decodable {
    case floor
    case wall
}

public extension Tile {
    var isWall: Bool {
        switch self {
        case .wall:
            return true
        case .floor:
            return false
        }
    }
}
