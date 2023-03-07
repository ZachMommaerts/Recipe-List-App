//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Zach Mommaerts on 3/7/23.
//

import Foundation

class RecipeModel: ObservableObject{
    
    @Published var recipes = [Recipe]()
    
    init(){
        recipes = DataService.getLocalData()
    }
}
