//
//  LessonListView.swift
//  LearningApp
//
//  Created by Alen Mujkic on 18.09.22.
//

import SwiftUI

struct LessonListView: View {
    
    let title : String
    let lessons : [Lesson]
    
    var body: some View {
        NavigationStack {
            
       
                ScrollView {
                    LazyVStack {
                        ForEach(lessons) { lesson in
                            let index = lessons.firstIndex { l in
                                l.id == lesson.id
                            } ?? 0
                            
                            NavigationLink {
                                Text(lesson.explanation)
                            } label: {
                                ListItemView(number:(index+1),title: lesson.title,subtitle: lesson.duration)
                                    .scaledToFill()
                                
                                
                            }
                            
                            
                            
                        }
                    }
                }
                .navigationTitle(title)
            
            
        }
    }
}

struct LessonListView_Previews: PreviewProvider {
    static let contentViewModel = ContentViewModel()
    static var previews: some View {
        let module = contentViewModel.modules[0]
        LessonListView(title: module.category, lessons: module.content.lessons)
            .environmentObject(contentViewModel)
    }
}
