//
//  Car.swift
//  DesignPatternDemo
//
//  Created by TranHoangThanh on 3/10/22.
//

import Foundation


class Car {
    var numberOfWheels : Int?
    var seatBelt : SeatBelt?
    var color : String?
    var windscreen : Windscreen?
    var engine: Engine?
    
    init(
        numberOfWheels : Int?,
        seatBelt :  SeatBelt?,
        color : String?,
        windscreen : Windscreen?,
        engine : Engine?)
    {
        self.numberOfWheels = numberOfWheels;
        self.seatBelt = seatBelt;
        self.color = color;
        self.windscreen = windscreen;
        self.engine = engine;
    }
    
    func ToString() -> String
    {
        var content = "";
        content += "Number of wheels:    \(numberOfWheels)\n";
        content += "Brand of seat belts: \(seatBelt?.brand)\n";
        content += "Color:               \(color)\n";
        content += "Windscreen brand:    \(windscreen?.name)\n";
        content += "Engine:              \(engine?.name)";
        return content;
    }
}
