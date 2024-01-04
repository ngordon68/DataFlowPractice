//
//  FruitObject.swift
//  DataFlowExample
//
//  Created by Nick Gordon on 12/14/23.
//

import Foundation
import Observation

@Observable class FruitObject  {
    
    var fruitFavorites:[FruitsModel] = []

    var fruitArray:[FruitsModel] = [
        FruitsModel(name: "strawberry", image: "strawberry", description: "This a strawberry", color: .red),
        FruitsModel(name: "blueberry", image: "blueberry", description: "This is a blueberry", color: .cyan),
        FruitsModel(name: "peach", image: "peach", description: "This is a peach", color: .pink),
        FruitsModel(name: "orange", image: "orange", description: "This is an orange", color: .orange),
        FruitsModel(name: "banana", image: "banana", description: "This is a banana", color: .yellow)
        ]
        
    
    
    
    var fruitOptions:[FruitsModel] = [
        FruitsModel(name: "strawberry", image: "strawberry", description: "This a strawberry", color: .red),
        FruitsModel(name: "blueberry", image: "blueberry", description: "This is a blueberry", color: .cyan),
        FruitsModel(name: "peach", image: "peach", description: "This is a peach", color: .pink),
        FruitsModel(name: "orange", image: "orange", description: "This is an orange", color: .orange),
        FruitsModel(name: "banana", image: "banana", description: "This is a banana", color: .yellow)
        ]
        
        func addFruit(fruit: FruitsModel) {
            
            var newFruit = fruit
            newFruit.id = UUID()
            fruitArray.append(newFruit)
        }
    
    func removeFruit(fruit: FruitsModel) {
        
        fruitArray.removeAll(where: {$0.id == fruit.id})
    }
    
    func appendFruitToFavorites(fruit: FruitsModel) {
        
        if let index = fruitArray.firstIndex(where: {$0.id == fruit.id}) {
            
            fruitArray[index].isFavorite.toggle()
            
            
            if  fruitArray[index].isFavorite == true {
                fruitFavorites.append(fruitArray[index])
            }
            
            if  fruitArray[index].isFavorite == false {
                fruitFavorites.removeAll(where: { $0.id == fruit.id })
            }
        }
  
    }
        
    
}
