//
//  Subject.swift
//  design_pattern
//
//  Created by TranHoangThanh on 2/16/22.
//

import Foundation

extension Array where Element: Equatable{
    mutating func remove(element: Element) {
        if let i = self.firstIndex(of: element) {
            self.remove(at: i)
        }
    }
}

class Subject {
    private var observers : [IObserver] = []
    
    func attachObserver(observer : IObserver) {
        observers.append(observer)
    }
    
    func detachObserver(observer : IObserver) {
      //  observers.remove(element: observer)
    }
    
    //func notifyObserver(subject : Subject , arg : Ob)
}

