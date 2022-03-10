//
//  TwoLegsAnimalFactory.swift
//  design_pattern
//
//  Created by TranHoangThanh on 2/15/22.
//

import Foundation


//class TwoLegsAnimalFactory : IAnimalFactory {
//    func createAnimal() -> IAnimal {
//        let randomInt = Int.random(in: 0..<2)
//        if randomInt == 0 {
//           return Duck()
//        } else {
//           return Chicken()
//        }
//    }
//}



class TwoLegsAnimalFactory : AbstractAnimalFactory {
    override func createAnimal() -> IAnimal {
        let randomInt = Int.random(in: 0..<2)
               if randomInt == 0 {
                  return Duck()
               } else {
                  return Chicken()
               }
    }
}

