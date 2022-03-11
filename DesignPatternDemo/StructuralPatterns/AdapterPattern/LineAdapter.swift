//
//  LineAdapter.swift
//  DesignPatternDemo
//
//  Created by TranHoangThanh on 3/11/22.
//

import Foundation

class LineAdapter : Ishape {
    
    private var legacy : LegacyLine
    
    init (legacy : LegacyLine) {
        self.legacy = legacy
    }
    func draw(x1: Int, y1: Int, x2: Int, y2: Int) {
        legacy.draw(x1: x1, y1: y1, x2: x2, y2: y2)
    }
    
    
}
