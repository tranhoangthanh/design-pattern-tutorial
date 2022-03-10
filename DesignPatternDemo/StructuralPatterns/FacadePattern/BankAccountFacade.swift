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
    
    var accountChecker : AccountChecker
    var securityCodeChecker : SecurityCodeChecker
    var cashManager : CashManager
    
    init(accountName : String , securityCode : Int) {
        self.accountName = accountName
        self.securityCode = securityCode
        accountChecker = AccountChecker(accountName: accountName)
        securityCodeChecker = SecurityCodeChecker(securityCode: securityCode)
        cashManager = CashManager(cashAmount: 1000)
    }
    
    // tiềng gửi
    func depositCash(cashMount : Double) {
        if accountChecker.isValid(accountName) && securityCodeChecker.isValid(securityCode) {
            cashManager.deposit(cashMount)
            print("Ok value")
        } else {
            print("No value")
        }
    }
    
    // tiền rút
    func widthDrawCash(cashAmount : Double) {
        if accountChecker.isValid(accountName) && securityCodeChecker.isValid(securityCode) && cashManager.haveEnoughMoney(cashAmount) {
            cashManager.withDraw(cashAmount)
            print("Ok value")
        } else {
            print("No value")
        }
    }
    
    
}
