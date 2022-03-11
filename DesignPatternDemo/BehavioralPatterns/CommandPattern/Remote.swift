//
//  Remote.swift
//  DesignPatternDemo
//
//  Created by TranHoangThanh on 3/10/22.
//

import Foundation



class Remote
{
    private var turnOnCommand : ICommand
    private var turnOffCommand : ICommand

    init(turnOnCommand : ICommand , turnOffCommand : ICommand)
    {
        self.turnOnCommand = turnOnCommand;
        self.turnOffCommand = turnOffCommand;
    }

    public func TurnOnButtonClick()
    {
        turnOnCommand.Execute();
    }

    public func TurnOffButtonClick()
    {
        turnOffCommand.Execute();
    }
}
