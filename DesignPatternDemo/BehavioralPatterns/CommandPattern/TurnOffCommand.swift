//
//  TurnOffCommand.swift
//  DesignPatternDemo
//
//  Created by TranHoangThanh on 3/10/22.
//

import Foundation


class TurnOffCommand : ICommand {
    
    private var fan : Fan
    
    init(fan : Fan) {
        self.fan = fan
    }
    
    func Execute() {
        fan.TurnOff()
    }
    
    func Undo() {
        self.fan.TurnOn()
    }
    
   }
