//
//  AlphaInputValidator.swift
//  LYCTplSwift
//
//  Created by liyoucheng on 2018/12/1.
//  Copyright © 2018年 LYC. All rights reserved.
//

import UIKit

class AlphaInputValidator: InputValidator {
    func validateInput(input: UITextField, error: inout NSError?) -> Bool {
        if (input.text?.count)! > 5 {
            return true
        }
        else {
            error = NSError(domain: "AlphaInputValidator", code: 200, userInfo: nil)
            
            return false
        }
    }
}
