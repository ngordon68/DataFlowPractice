//
//  FruitDetailsView.swift
//  DataFlowExample
//
//  Created by Nick Gordon on 12/14/23.
//

import SwiftUI

struct FruitDetailsView: View {
    
    var fruit: FruitsModel
    
    var body: some View {
        
        ZStack {
            
            Color(fruit.color)
                .ignoresSafeArea()
            
            VStack {
                Text(fruit.name)
                    .bold()
                    .font(.largeTitle)
                
                Image(fruit.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Text(fruit.description)
                
            }
        }
    }
}

#Preview {
    FruitDetailsView(fruit: .example )
}
