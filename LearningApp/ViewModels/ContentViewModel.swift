//
//  ContentViewModel.swift
//  LearningApp
//
//  Created by Alen Mujkic on 18.09.22.
//

import Foundation

class ContentViewModel : ObservableObject {
    @Published var modules : [Module] = []
    var styleData : Data = Data()
    
    init(){
        if let modules : [Module] = getJson(name: "data"){
            self.modules = modules
        }
        if let data : Data = getHtml(name: "style") {
            self.styleData = data
        }
    }
    
    func getHtml(name : String) -> Data? {
        
        guard let url = Bundle.main.url(forResource: name, withExtension: "html") else { return nil }
        
        do{
            
           return try Data(contentsOf: url)
            
        }catch{
            print(error)
        }
        
        return nil
    }
    
    func getJson<T : Decodable>(name : String) -> T? {
        
       
        
        guard let url =  Bundle.main.url(forResource: name, withExtension: "json") else { return nil }
        
        do{
            
           let data = try Data(contentsOf: url)
            
            do{
                return try JSONDecoder().decode(T.self, from: data)
            }catch{
                print(error)
            }
            
        }catch{
            print(error)
        }
        
        return nil
    }
}
