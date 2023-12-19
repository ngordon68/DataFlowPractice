//
//  ContentView.swift
//  DataFlowExample
//
//  Created by Nick Gordon on 11/29/23.
//

import SwiftUI
/*
 have different levels of difficuilty
 
 
 silver can be add a new fruit or delete
 
 gold can toggle button that will favorite a fruit into a favorite array
 
 use example in keynote
 */

struct ContentView: View {
    
    /*
     make a variable that references the FruitObject
     make a ForEach loop inside the View that shows the lists of fruits.
     make a navigationLink that goes to the FruitDetailsView
     */
  var fruit:FruitObject = FruitObject()
    
    var body: some View {
        
        NavigationStack {
            
 
            ForEach(fruit.fruitArray) { fruit in
                NavigationLink {
                    FruitDetailsView(fruit: fruit)
                } label: {
                    Rectangle()
                        .foregroundStyle(fruit.color)
                        .cornerRadius(15)
                        .overlay {
                            Text(fruit.name)
                                .bold()
                                .foregroundStyle(.black)
                            
                        }
                        .padding()
                    
                }
            }
            .navigationTitle("Fruits")
            
        }
       
    }
}

#Preview {
    ContentView()
}
