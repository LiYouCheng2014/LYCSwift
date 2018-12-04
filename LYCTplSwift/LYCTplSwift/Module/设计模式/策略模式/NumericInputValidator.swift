//
//  NumericInputValidator.swift
//  LYCTplSwift
//
//  Created by liyoucheng on 2018/12/1.
//  Copyright © 2018年 LYC. All rights reserved.
//

import UIKit

class NumericInputValidator: InputValidator {
    func validateInput(input: UITextField, error: inout NSError?) -> Bool {
        if (input.text?.count)! > 5 {
            return true
        }
        else {
            error = NSError(domain: "NumericInputValidator", code: 200, userInfo: nil)

            return false
        }
    }
}
