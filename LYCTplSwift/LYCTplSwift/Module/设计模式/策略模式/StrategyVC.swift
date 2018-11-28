//
//  StrategyVC.swift
//  LYCTplSwift
//
//  Created by liyoucheng on 2018/11/28.
//  Copyright © 2018年 LYC. All rights reserved.
//

import UIKit

class StrategyVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sequence = Sequence(1,2,3,4)
        sequence.addNumber(value: 10)
        sequence.addNumber(value: 20)
        
        let sumStragegy = SumStrategy()
        let multiplyStragegy = MultiplyStrategy()
        
        let sum = sequence.compute(strategy: sumStragegy)
        print("sum: \(sum)")
        
        let multiply = sequence.compute(strategy: multiplyStragegy)
        print("multiply: \(multiply)")
    }

}
