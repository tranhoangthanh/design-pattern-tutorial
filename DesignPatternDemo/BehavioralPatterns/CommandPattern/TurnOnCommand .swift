//
//  TurnOnCommand .swift
//  DesignPatternDemo
//
//  Created by TranHoangThanh on 3/10/22.
//

import Foundation

class TurnOnCommand : ICommand {
    
    private var fan : Fan
    
    init(fan : Fan) {
        self.fan = fan
    }
    
    func Execute() {
        fan.TurnOn()
    }
    
    func Undo() {
        fan.TurnOff()
    }
    
   }
