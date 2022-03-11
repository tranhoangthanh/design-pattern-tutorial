//
//  RectangleAdapter.swift
//  DesignPatternDemo
//
//  Created by TranHoangThanh on 3/11/22.
//

import Foundation

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
