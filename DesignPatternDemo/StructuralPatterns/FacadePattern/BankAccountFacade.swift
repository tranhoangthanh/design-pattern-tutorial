//
//  BankAccountFacade.swift
//  design_pattern
//
//  Created by TranHoangThanh on 2/16/22.
//

import Foundation
import UIKit

class BankAccountFacade {
    private var accountName : String = ""
    private var securityCode : Int = 0
    
    let accountChecker : AccountChecker
    
    init(accountName : String , securityCode : Int) {
        self.accountName = accountName
        self.securityCode = securityCode
    }
    
    func depositCash(cashMount : Double) {
        
    }
    
    func widthDrawCash(cashAmount : Double) {
        
    }
    
    
}
