//
//  Box.swift
//  AnyObjectConvertible
//
//  Created by Nobuo Saito on 2016/01/27.
//  Copyright © 2016年 tarunon. All rights reserved.
//

import Foundation

internal class Box<T> {
    let value: T
    init(value: T) {
        self.value = value
    }
}