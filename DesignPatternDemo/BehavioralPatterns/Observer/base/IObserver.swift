//
//  IObserver.swift
//  design_pattern
//
//  Created by TranHoangThanh on 2/16/22.
//

import Foundation

protocol IObserver  {
    var  uuid: Int {get}
    func notify<T>(with newValue: T)
}


protocol Observable {
    associatedtype T
    var value : T { get set }
    var observers : [IObserver] { get set }
    
    func addObserver(observer: IObserver)
    func removeObserver(observer: IObserver)
    func notifyAllObservers<T>(with newValue: T)
}
