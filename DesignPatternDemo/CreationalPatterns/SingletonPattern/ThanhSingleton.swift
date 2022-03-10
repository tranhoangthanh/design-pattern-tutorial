//
//  ThanhSingleton.swift
//  DesignPatternDemo
//
//  Created by TranHoangThanh on 3/10/22.
//

import Foundation
import UIKit

class ThanhSingleton {
    var index : Int
    static var uniqueInstance : ThanhSingleton?
    
    init(index : Int) {
        self.index = index
    }
    
    static func getInstance() -> ThanhSingleton {
        if uniqueInstance == nil {
            let randomInt = Int.random(in: 0..<4)
            uniqueInstance = ThanhSingleton(index: randomInt);
        }
        return uniqueInstance!
    }
    
    func saysHi()
    {
        print("Hello everyone, I am thanh number " , index);
    }
}

func testSingleton() {
    ThanhSingleton.getInstance().saysHi()
}
