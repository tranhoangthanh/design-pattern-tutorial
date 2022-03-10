//
//   ICarBuilder.swift
//  DesignPatternDemo
//
//  Created by TranHoangThanh on 3/10/22.
//

import Foundation

protocol ICarBuilder {
    func addWheels(numberOfWheels : Int) -> CarBuilder
    func addSeatBelts(seatBelt : SeatBelt ) -> CarBuilder
    func paint(color : String) -> CarBuilder
    func addWindscreen(windscreen : Windscreen) -> CarBuilder
    func addEngine(engine : Engine) ->   CarBuilder
    func build() -> Car
}
