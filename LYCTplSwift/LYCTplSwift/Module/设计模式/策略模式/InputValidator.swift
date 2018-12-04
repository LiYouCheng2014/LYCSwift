//
//  InputValidator.swift
//  LYCTplSwift
//
//  Created by liyoucheng on 2018/12/1.
//  Copyright © 2018年 LYC. All rights reserved.
//

import UIKit

protocol InputValidator {
    func validateInput(input: UITextField, error: inout NSError?) -> Bool
}

extension InputValidator {
    func validateInput(input: UITextField, error: inout NSError?) -> Bool {
        return false
    }
}
