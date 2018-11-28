//
//  Strategy.swift
//  LYCTplSwift
//
//  Created by liyoucheng on 2018/11/28.
//  Copyright © 2018年 LYC. All rights reserved.
//

import Foundation

protocol Strategy {
    func execute(values: [Int]) -> Int
}

class SumStrategy: Strategy {
    func execute(values: [Int]) -> Int {
        return values.reduce(0, {
            $0 + $1
        })
    }
}

class MultiplyStrategy: Strategy {
    func execute(values: [Int]) -> Int {
        return values.reduce(1, {
            $0 * $1
        })
    }
}
