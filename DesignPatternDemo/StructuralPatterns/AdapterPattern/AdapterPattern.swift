//
//  AdapterPattern.swift
//  DesignPatternDemo
//
//  Created by TranHoangThanh on 3/10/22.
//

import Foundation
import UIKit


protocol Ishape {
    func draw(x1 : Int , y1 : Int , x2 : Int , y2 : Int)
}


class LegacyRectangle {
    
    func draw(x1: Int, y1: Int, w: Int, h: Int) {
        print("Drawing Rectangle \(x1) \(y1) \(w) \(h)")
    }
}

class LegacyLine {
    
    func draw(x1: Int, y1: Int, x2: Int, y2: Int) {
        print("Drawing Line \(x1) \(y1) \(x2) \(y2)")
    }
}

class RectangleAdapter : Ishape {
    
    private var legacy : LegacyRectangle
    
    init (legacy : LegacyRectangle) {
        self.legacy = legacy
    }
    
    func draw(x1: Int, y1: Int, x2: Int, y2: Int) {
        let x = min(x1, x2)
        let y = min(y1, y2)
        let w = abs(x2-x1)
        let h = abs(y2-y1)
        legacy.draw(x1: x, y1: y, w: w, h: h)
    }
    
    
}

class LineAdapter : Ishape {
    
    private var legacy : LegacyLine
    
    init (legacy : LegacyLine) {
        self.legacy = legacy
    }
    func draw(x1: Int, y1: Int, x2: Int, y2: Int) {
        legacy.draw(x1: x1, y1: y1, x2: x2, y2: y2)
    }
    
    
}


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


