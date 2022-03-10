//
//  ViewController.swift
//  DesignPatternDemo
//
//  Created by TranHoangThanh on 3/10/22.
//

import UIKit

class ViewController: UIViewController {

    let serialQueue = DispatchQueue(label: "queuename")
  
    let concurrentQueue = DispatchQueue(label: "queuename", attributes: .concurrent)
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        for _ in 1...50 {
            concurrentQueue.sync {
                testSingleton()
            }
        }
        
        
        
        
        //testFacade()
        //testStrategy()
        //testBuilder()
       
        
    }
    

    

}

