//
//  ContentView.swift
//  Recipe List App
//
//  Created by Zach Mommaerts on 3/7/23.
//

import SwiftUI

struct RecipeListView: View {
    
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        VStack {
            List(model.recipes){ recipe in
                HStack(spacing: 20.0){
                    Image(recipe.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50, alignment: .center)
                        .clipped()
                        .cornerRadius(5)
                    Text(recipe.name)
                }
            }
        }
        .padding()
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
