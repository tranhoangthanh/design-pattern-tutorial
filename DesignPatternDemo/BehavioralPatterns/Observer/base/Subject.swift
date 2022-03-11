//
//  Subject.swift
//  design_pattern
//
//  Created by TranHoangThanh on 2/16/22.
//

import Foundation

class Subject<T> : Observable  {
    
    private var _value : T! = nil
    private var _observers : [IObserver] = []
    
    var value : T {
        get {
            return self._value
        }
        set {
            self._value = newValue
            self.notifyAllObservers(with: newValue)
        }
    }
    
    var observers : [IObserver] {
        get {
            return self._observers
        }
        set {
            self._observers = newValue
        }
    }
    
    func addObserver(observer: IObserver) {
        observers.append(observer)
    }
    
    func removeObserver(observer: IObserver) {
        observers = observers.filter({$0.uuid != observer.uuid})
    }
    
    func notifyAllObservers<T>(with newValue: T) {
        for observer in observers {
            observer.notify(with: newValue)
        }
    }
}

