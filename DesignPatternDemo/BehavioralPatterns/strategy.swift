//
//  Strategy.swift
//  design_pattern
//
//  Created by TranHoangThanh on 2/9/22.
//

import Foundation

protocol IpromoteStrategy {
    func doDiscount(_ price : Double) -> Double
}

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


class QuarterDiscountStrategy : IpromoteStrategy {
    func doDiscount(_ price: Double) -> Double {
        return price * 0.75
    }
    
    
}


class NoDiscountStrategy : IpromoteStrategy {
    func doDiscount(_ price: Double) -> Double {
        return price
    }
    
    
}

class HalfDiscountStrategy : IpromoteStrategy {
    func doDiscount(_ price: Double) -> Double {
        return price * 0.5
    }
    
    
}


fileprivate func generatePromoteStrategy( _ ticket: Ticket) {
    let randomInt = Int.random(in: 0..<3)
  
    switch randomInt {
    case 0:
        ticket.setPromoteStrategy(value: NoDiscountStrategy())
        break
    case 1:
        ticket.setPromoteStrategy(value: QuarterDiscountStrategy())
        break
    default:
        ticket.setPromoteStrategy(value:  HalfDiscountStrategy())
        break
    }
}

func testStrategy() {
    
    for i in 0...5 {
       
        let ticket = Ticket()
        ticket.setName(value: "Ticket : \(i)")
        ticket.setPrice(value: Double(50 * i))
        print("Price origin : \(ticket.getPrice())")
        generatePromoteStrategy(ticket)
        
        print("Promote Price of \(ticket.getName()) is \(ticket.getPromotePrice()) \(ticket.getPromoteStrategy())" )
        print("" )
    }
}
