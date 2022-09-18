//
//  ContentViewModel.swift
//  LearningApp
//
//  Created by Alen Mujkic on 18.09.22.
//

import Foundation

class ContentViewModel : ObservableObject {
    @Published var modules : [Module] = []
    
    @Published var selectedModule : Module? = nil

    
    @Published var selectedLesson : Lesson? = nil
    
    var styleData : Data = Data()
    
    init(){
        if let modules : [Module] = DataService.getJson(name: "data"){
            self.modules = modules
        }
        if let data : Data = DataService.getHtml(name: "style") {
            self.styleData = data
        }
    }
    
    func beginModule(module : Module){
        //set current module
        selectedModule = module
    }
    
    func beginLesson(lesson : Lesson){
        selectedLesson = lesson
    }
    
}
