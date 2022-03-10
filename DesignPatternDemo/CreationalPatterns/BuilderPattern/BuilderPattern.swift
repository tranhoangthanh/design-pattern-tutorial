//
//  BuilderPattern.swift
//  DesignPatternDemo
//
//  Created by TranHoangThanh on 3/10/22.
//

import Foundation

// giup chia nho cac init thanh cac phan nho hon
// khoi tao cac object theo cac huong khac nhau

func testBuilder() {
    
    var car = Car(numberOfWheels: nil, seatBelt: SeatBelt(brand: "thanh seatBelt"), color: nil, windscreen: Windscreen(name : "thanh"), engine: Engine(name: "thanh Foot"))
    
    
    
    var carByBuilder = CarBuilder()
        .addWheels(numberOfWheels: 4)
        .addSeatBelts(seatBelt: SeatBelt(brand: "thanh seatBelt"))
        .addWindscreen(windscreen:Windscreen (name: "thanh windscreen"))
        .paint(color: "RED")
     //   .addEngine(engine: Engine(name: "thanh Engine"))
        .build()
    print(car.ToString())
    print("------------------------------------")
    print(carByBuilder.ToString())
    
}

