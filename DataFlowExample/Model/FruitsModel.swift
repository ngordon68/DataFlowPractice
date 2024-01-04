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

struct FruitsModel: Identifiable, Hashable {
    
    var id:UUID = UUID()
    var name:String
    var image:String
    var description:String
    var color:Color
    var isFavorite:Bool = false
    
    
    static let example =   FruitsModel(name: "strawberry", image: "strawberry", description: "vvf", color: .pink)
    
}
