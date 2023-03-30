//
//  DataService.swift
//  Recipe List App
//
//  Created by Zach Mommaerts on 3/7/23.
//

import Foundation

class DataService{
    
    static func getLocalData() -> [Recipe]{
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        guard pathString != nil else{
            return [Recipe]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do{
            let data = try Data(contentsOf: url)
            
            do{
                let decoder = JSONDecoder()
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                for recipe in recipeData{
                    recipe.id = UUID()
                    
                    for i in recipe.ingredients{
                        i.id = UUID()
                    }
                }
                
                return recipeData
            }catch{
                print(error)
            }
        }catch{
            print(error)
        }
        
        return [Recipe]()
    }
    
}
