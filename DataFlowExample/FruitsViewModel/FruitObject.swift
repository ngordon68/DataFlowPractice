//
//  FruitObject.swift
//  DataFlowExample
//
//  Created by Nick Gordon on 12/14/23.
//

import Foundation
import Observation


/*
 
 import the Observation framework
 
 make an array of fruits that has strawberry, blueberry, banana, peach, and an orange inside the FruitObject
 */

@Observable class FruitObject  {

    var fruitArray:[FruitsModel] = [
    
        FruitsModel(name: "strawberry", image: "strawberry", description: "This a strawberry", color: .red),
        FruitsModel(name: "blueberry", image: "blueberry", description: "This is a blueberry", color: .cyan),
        FruitsModel(name: "peach", image: "peach", description: "This is a peach", color: .pink),
        FruitsModel(name: "orange", image: "orange", description: "This is an orange", color: .orange),
        FruitsModel(name: "banana", image: "banana", description: "This is a banana", color: .yellow)

    ]
}
