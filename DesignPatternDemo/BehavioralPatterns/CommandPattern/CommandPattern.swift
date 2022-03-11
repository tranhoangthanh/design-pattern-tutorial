//
//  CommandPattern.swift
//  DesignPatternDemo
//
//  Created by TranHoangThanh on 3/10/22.
//

import Foundation



func testCommand()
       {
           let fan = Fan();

           let turnOnCommand = TurnOnCommand(fan: fan);
           let turnOffCommand = TurnOffCommand(fan: fan);

           let remote = Remote(turnOnCommand: turnOnCommand, turnOffCommand: turnOffCommand);

           remote.TurnOnButtonClick();
           remote.TurnOffButtonClick();
       }
