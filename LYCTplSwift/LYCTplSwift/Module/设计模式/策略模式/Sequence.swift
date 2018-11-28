//
//  Sequence.swift
//  LYCTplSwift
//
//  Created by liyoucheng on 2018/11/28.
//  Copyright © 2018年 LYC. All rights reserved.
//

import Foundation

final class Sequence {
    private var numbers: [Int]
    
    init(_ numbers: Int...) {
        self.numbers = numbers
    }
    
    func addNumber(value: Int) {
        self.numbers.append(value)
    }
    
    func compute(strategy: Strategy) -> Int {
        return strategy.execute(values: self.numbers)
    }
}
