//
//  factory.swift
//  design_pattern
//
//  Created by TranHoangThanh on 1/26/22.
//

func testabstractFactory () {
    
    var factory : IAnimalFactory
    let randomInt = Int.random(in: 0..<2)
    print("randomInt",randomInt)
    if randomInt == 0 {
        factory = FourLegsAnimalFactory()
    } else {
        factory = TwoLegsAnimalFactory()
    }
 
    print(factory.createAnimal())
    print(factory.createAnimal())
    print(factory.createAnimal())
    print(factory.createAnimal())
    print(factory.createAnimal())
}
