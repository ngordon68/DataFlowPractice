//
//  FruitFavoriteView.swift
//  DataFlowExample
//
//  Created by Nick Gordon on 1/4/24.
//

import SwiftUI

struct FruitFavoriteView: View {
    var fruitObject: FruitObject
    var body: some View {
        ScrollView {
        ForEach(fruitObject.fruitFavorites) { fruit in
            
            Rectangle()
                .foregroundStyle(fruit.color)
                .cornerRadius(20)
                .frame(width: 350, height: 100)
                .overlay {
                    HStack {
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
                        }
                        VStack {
                            
                            Button {
                                fruitObject.appendFruitToFavorites(fruit: fruit)
                            } label: {
                                Image(systemName: "heart.fill")
                                    .foregroundColor(fruit.isFavorite ? .white: .black)
                            }

                            Button(action: {
                                fruitObject.removeFruit(fruit: fruit)
                            }, label: {
                                
                                Image(systemName: "trash")
                                    .foregroundStyle(.black)
                            })
                            .padding()
                        }
                    }
                }
        }
    
}
    }
}

#Preview {
    FruitFavoriteView(fruitObject: FruitObject())
}
