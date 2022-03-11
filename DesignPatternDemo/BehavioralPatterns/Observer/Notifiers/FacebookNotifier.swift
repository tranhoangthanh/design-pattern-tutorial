//
//  FacebookNotifier.swift
//  DesignPatternDemo
//
//  Created by TranHoangThanh on 3/11/22.
//

import Foundation


class FacebookNotifier : IObserver {
    private var _id : Int = 0
    
    var uuid: Int {
        get {
            return self._id
        }
    }
    

    init(id: Int) {
        self._id = id
    }
    

    func notify<T>(with newValue: T) {
        print("Notify all subscribers via  Facebook \(self.uuid) updated with new value : ", newValue)
    }
    
}
