//
//  Ray.swift
//  Engine
//
//  Created by Greger Sundvall on 2021-01-14.
//

public struct Ray {
    public var origin, direction: Vector
    
    public init(origin: Vector, direction: Vector) {
        self.origin = origin
        self.direction = direction
    }
}
