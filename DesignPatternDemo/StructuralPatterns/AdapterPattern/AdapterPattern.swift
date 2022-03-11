//
//  AdapterPattern.swift
//  DesignPatternDemo
//
//  Created by TranHoangThanh on 3/10/22.
//

import Foundation
import UIKit


func testIshapeAdapter() {
    let shapes : [Ishape] = [ LineAdapter(legacy: LegacyLine()) , RectangleAdapter(legacy: LegacyRectangle())]
    let x1 = 5
    let y1 = 10
    let x2 = -3
    let y2 = 2
    shapes.forEach { shape in
        shape.draw(x1: x1, y1: y1, x2: x2, y2: y2)
    }
}


