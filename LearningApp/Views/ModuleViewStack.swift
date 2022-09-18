//
//  ModuleViewStack.swift
//  LearningApp
//
//  Created by Alen Mujkic on 18.09.22.
//

import SwiftUI

struct ModuleViewStack: View {
    
    let module : Module
    @EnvironmentObject var contentViewModel : ContentViewModel
    var body: some View {
        LazyVStack{
            let lessonModuleTitle = "Learn \(module.category)"
            let testModuleTitle = "\(module.category) Test"
            NavigationLink {
                LessonListView(title:lessonModuleTitle, lessons: module.content.lessons)
                    .onAppear{
                        contentViewModel.beginModule(module: module)
                    }
            } label: {
                CardView(title:lessonModuleTitle,subtitle: module.content.description,image:module.content.image,contentInfo: ContentInfo(contentCount: "\(module.content.lessons.count) Lessons", duration: module.content.time))
            }

            
            NavigationLink {
                Text("Test...")
            } label: {
                CardView(title:testModuleTitle,subtitle: module.test.description,image:module.test.image,contentInfo: ContentInfo(contentCount: "\(module.test.questions.count) Questions", duration: module.test.time))
            }
            
        }
        
        .foregroundColor(.black)
    }
}

struct ModuleViewStack_Previews: PreviewProvider {
    static let contentViewModel = ContentViewModel()
    static var previews: some View {
        ModuleViewStack(module: contentViewModel.modules[0])
            .environmentObject(contentViewModel)
    }
}
