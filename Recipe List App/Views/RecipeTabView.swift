//
//  RecipeTabView.swift
//  Recipe List App
//
//  Created by Zach Mommaerts on 3/29/23.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        
        TabView{
            
            RecipeFeaturedView()
                .tabItem{
                    VStack{
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
            }
            
            RecipeListView()
                .tabItem{
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
            }
        }
        .environmentObject(RecipeModel())
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
