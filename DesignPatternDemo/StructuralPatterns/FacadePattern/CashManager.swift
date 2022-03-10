//
//  CashManager.swift
//  DesignPatternDemo
//
//  Created by TranHoangThanh on 3/10/22.
//

import Foundation
import UIKit

class CashManager {
    private var cashInAccount : Double
    
    init(cashAmount : Double) {
        self.cashInAccount = cashAmount
    }
    
    func haveEnoughMoney(_ cashAmout :  Double) -> Bool {
        return self.cashInAccount > cashAmout
    }
    
    func deposit(_ cashAmout :  Double) {
        self.cashInAccount += cashAmout
        print("Cash in Account",cashInAccount)
    }
    
    func withDraw(_ cashAmout : Double) {
        self.cashInAccount -= cashAmout
        print("Cash in Account",cashInAccount)
    }
}
