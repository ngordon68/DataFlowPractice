//
//  ContentView.swift
//  DataFlowExample
//
//  Created by Nick Gordon on 11/29/23.
//

import SwiftUI

struct ContentView: View {

  @State private var isShowingAddFruitView = false
  @State private var isShowingFruitFavoritesView = false
  @State private var currentFruit:FruitsModel = .example
  var fruitObject:FruitObject = FruitObject()
    
    var body: some View {
        
        
     
            
         
            NavigationStack {
                VStack {
                
                    HStack {
                        Button {
                            isShowingAddFruitView = true
                        } label: {
                            Text("Add Fruit")
                        }
                        .buttonStyle(.bordered)
                     
                        
                        Button {
                            isShowingFruitFavoritesView = true
                        } label: {
                            Text("Favorites")
                        }
                        .buttonStyle(.bordered)
                    }
                    ScrollView {
                        ForEach(fruitObject.fruitArray) { fruit in
                            
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
                .navigationTitle("Fruits")
                .sheet(isPresented: $isShowingAddFruitView, content: {
                    FruitSelectionView(fruitObject: fruitObject, isShowingFruitSelectionView: $isShowingAddFruitView)
                })
                .sheet(isPresented: $isShowingFruitFavoritesView, content: {
                    FruitFavoriteView(fruitObject: fruitObject)
                })
                
            }
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
