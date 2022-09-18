//
//  LearningAppApp.swift
//  LearningApp
//
//  Created by Alen Mujkic on 18.09.22.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentViewModel())
        }
    }
}
