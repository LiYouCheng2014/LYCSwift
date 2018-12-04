//
//  CustomTextField.swift
//  LYCTplSwift
//
//  Created by liyoucheng on 2018/12/1.
//  Copyright © 2018年 LYC. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {

    var inputValidator: InputValidator?
    
    func validate() -> Bool {
        var error: NSError? = nil
        let result = (inputValidator?.validateInput(input: self, error: &error))!
        
        if !result {
            
        }
        else {
            print(error?.domain ?? "")
        }
        
        return result
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
