//
//  AnyObjectConvertibleTests.swift
//  AnyObjectConvertibleTests
//
//  Created by Nobuo Saito on 2016/01/27.
//  Copyright © 2016年 tarunon. All rights reserved.
//

import XCTest
import AnyObjectConvertible

struct A {
    let str: String
    let int: Int
}

extension A: AnyObjectConvertible {}

extension A: Equatable {
    
}

func ==(lhs: A, rhs: A) -> Bool {
    return lhs.str == rhs.str && lhs.int == rhs.int
}

class AnyObjectConvertibleTests: XCTestCase {
    
    func testConvert() {
        let a = A(str: "abc", int: 123)
        let converted = a as AnyObject
        let restored = converted as? A
        XCTAssertEqual(a, restored)
    }
}
