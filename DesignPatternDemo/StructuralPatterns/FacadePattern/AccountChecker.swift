//
//  AccountChecker.swift
//  DesignPatternDemo
//
//  Created by TranHoangThanh on 3/10/22.
//

import Foundation

class AccountChecker {
    var accountName : String
    
    init(accountName : String) {
        self.accountName = accountName
    }
    
    func isValid(_ accountName : String) -> Bool {
        return self.accountName == accountName
    }
}
