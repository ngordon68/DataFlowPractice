//
//  FruitsModel.swift
//  DataFlowExample
//
//  Created by Nick Gordon on 12/14/23.
//
/*
 take out idenfitifiable and var id
 */
import Foundation
import SwiftUI


/*
 TODO: make a Fruit model that has a name, image, and descriptions
 
 BONUS: try to make a property for the fruit color
 */

struct FruitsModel: Identifiable {
    
    var id:UUID = UUID()
    var name:String
    var image:String
    var description:String
    var color:Color
    
    
    static let example =   FruitsModel(name: "strawberry", image: "strawberry", description: "vvf", color: .pink)
    
}
