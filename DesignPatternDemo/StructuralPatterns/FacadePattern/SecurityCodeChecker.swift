//
//   SecurityCodeChecker.swift
//  DesignPatternDemo
//
//  Created by TranHoangThanh on 3/10/22.
//

import Foundation

class  SecurityCodeChecker {
    var securityCode : Int
    
    init(securityCode : Int) {
        self.securityCode = securityCode
    }
    
    func isValid(_ securityCode : Int) -> Bool {
        return self.securityCode == securityCode
    }
}
