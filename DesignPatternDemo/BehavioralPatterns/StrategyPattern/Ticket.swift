//
//  Ticket.swift
//  DesignPatternDemo
//
//  Created by TranHoangThanh on 3/10/22.
//

import Foundation

class Ticket {
    
    private var promoteStrategy : IpromoteStrategy
    private var price : Double = 0
    private var name : String = ""
    init () {
        self.promoteStrategy = NoDiscountStrategy()
    }
    init(promoteStrategy : IpromoteStrategy){
        self.promoteStrategy = promoteStrategy
    }
    
    func getPromoteStrategy() -> IpromoteStrategy {
        return promoteStrategy
    }
    
    func setPromoteStrategy(value : IpromoteStrategy) {
        self.promoteStrategy = value
    }
    
    
    func getName() -> String {
        return name
    }
    
    func setName(value : String) {
        self.name = value
    }
    
    func getPrice() -> Double {
        return price
    }
    
    func setPrice(value : Double) {
        self.price = value
    }
    
    func getPromotePrice() -> Double {
        return promoteStrategy.doDiscount(price)
    }
    
}
