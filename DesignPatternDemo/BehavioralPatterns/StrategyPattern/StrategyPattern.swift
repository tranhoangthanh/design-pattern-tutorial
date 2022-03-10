//
//  Strategy.swift
//  design_pattern
//
//  Created by TranHoangThanh on 2/9/22.
//

import Foundation






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
        print("")
    }
}
