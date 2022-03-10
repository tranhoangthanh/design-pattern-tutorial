//
//  CarBuilder.swift
//  DesignPatternDemo
//
//  Created by TranHoangThanh on 3/10/22.
//

import Foundation

class CarBuilder : ICarBuilder {
    
    var numberOfWheels : Int?
    var seatBelt : SeatBelt?
    var color : String?
    var windscreen : Windscreen?
    var engine: Engine?
    
    func addWheels(numberOfWheels: Int) -> CarBuilder {
        self.numberOfWheels = numberOfWheels
        return self
    }
    
    func addSeatBelts(seatBelt: SeatBelt) -> CarBuilder {
        self.seatBelt = seatBelt
        return self
    }
    
    func paint(color: String) -> CarBuilder {
        self.color = color
        return self
    }
    
    func addWindscreen(windscreen: Windscreen) -> CarBuilder {
        self.windscreen = windscreen
        return self
    }
    
    func addEngine(engine: Engine) -> CarBuilder {
        self.engine =  engine
        return self
    }
    
    func build() -> Car {
        return Car(numberOfWheels: self.numberOfWheels, seatBelt: self.seatBelt, color: self.color, windscreen: self.windscreen, engine: self.engine)
    }
    
 
    
}
