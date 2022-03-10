//
//  FacadePattern.swift
//  design_pattern
//
//  Created by TranHoangThanh on 2/16/22.
//

import Foundation



class FacadePattern {
    var bankAccountFacade : BankAccountFacade = BankAccountFacade(accountName: "thanhtran", securityCode: 1234)
    
     func test() {
         bankAccountFacade.widthDrawCash(cashAmount: 100000)
         bankAccountFacade.depositCash(cashMount: 100000)
        
     }
}

func testFacade() {
    let bank = FacadePattern()
    bank.test()
}
