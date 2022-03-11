//
//  ICommand.swift
//  DesignPatternDemo
//
//  Created by TranHoangThanh on 3/10/22.
//

import Foundation


protocol ICommand
    {
        func Execute();
        func Undo();
    }
