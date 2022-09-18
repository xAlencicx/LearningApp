//
//  ContentView.swift
//  LearningApp
//
//  Created by Alen Mujkic on 18.09.22.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var contentViewModel : ContentViewModel
    
    var body: some View {
       
            NavigationStack {
               
                VStack(alignment: .leading){
                    VStack(alignment:.leading){
                        Text("Get Started")
                            .font(.largeTitle)
                            .bold()
                        Text("What would you like to do today?")
                    }
                    .padding()
                    ScrollView {
                        LazyVStack {
                            ForEach(contentViewModel.modules){ module in
                                
                                ModuleViewStack(module: module)
                                
                            }
                        }
                    }
                }
                
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentViewModel())
    }
}
