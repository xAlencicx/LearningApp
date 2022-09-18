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
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
