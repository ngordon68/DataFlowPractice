//
//  FruitSelectionView.swift
//  DataFlowExample
//
//  Created by Nick Gordon on 1/3/24.
//

import SwiftUI

struct FruitSelectionView: View {
    var fruitObject: FruitObject
    @Binding var isShowingFruitSelectionView:Bool
    var body: some View {
        Text("Select a Fruit")
        
        ForEach(fruitObject.fruitOptions) { fruit in
            
            Button(action: {
                
                fruitObject.addFruit(fruit: fruit)
                isShowingFruitSelectionView = false
                
            }, label: {
                Image(fruit.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
            })
            
        }
        
    }
}

#Preview {
    FruitSelectionView(fruitObject: FruitObject(), isShowingFruitSelectionView: .constant(true) )
}
