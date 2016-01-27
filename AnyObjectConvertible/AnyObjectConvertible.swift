//
//  AnyObjectConvertible.swift
//  AnyObjectConvertible
//
//  Created by Nobuo Saito on 2016/01/27.
//  Copyright © 2016年 tarunon. All rights reserved.
//

import Foundation

public protocol AnyObjectConvertible: _ObjectiveCBridgeable {}

public extension AnyObjectConvertible {
    public typealias _ObjectiveCType = Box<Self>
    
    public func _bridgeToObjectiveC() -> Box<Self> {
        return Box.init(value: self)
    }
    
    public static func _getObjectiveCType() -> Any.Type {
        return _ObjectiveCType.self
    }
    
    public static func _isBridgedToObjectiveC() -> Bool {
        return true
    }
    
    public static func _forceBridgeFromObjectiveC(source: Box<Self>, inout result: Self?) {
        result = source.value
    }
    
    public static func _conditionallyBridgeFromObjectiveC(source: Box<Self>, inout result: Self?) -> Bool {
        result = source.value
        return true
    }
}
