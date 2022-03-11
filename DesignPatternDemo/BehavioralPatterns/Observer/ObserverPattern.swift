//
//  ObserverPattern.swift
//  DesignPatternDemo
//
//  Created by TranHoangThanh on 3/11/22.
//

import Foundation

func testObserverPattern() {
    let obs1 = FacebookNotifier(id: 0)
    let obs2 = EmailNotifier(id: 1)
    
    let obsv = Subject<String>()
    obsv.addObserver(observer: obs1)
    obsv.addObserver(observer: obs2)
    obsv.value = "thanh"
    obsv.removeObserver(observer: obs2)
    obsv.value = "dev"
    obsv.value = "ios"
}
