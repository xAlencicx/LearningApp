//
//  ListItemView.swift
//  LearningApp
//
//  Created by Alen Mujkic on 19.09.22.
//

import SwiftUI

struct ListItemView : View {
    
    let number : Int
    let title : String
    let subtitle : String
  
   
    var body: some View {
       
           
                
                HStack(alignment:.center){
           
                    Text("\(number)")
                        .font(.title2)
                        .padding(.trailing,32)
               
                    VStack(alignment:.leading,spacing: 4){
                        Text(title)
                            .font(.headline)
                            .bold()
                            .multilineTextAlignment(.leading)
                        Text(subtitle)
                            .font(.subheadline)
                            .multilineTextAlignment(.leading)
                    }
                    .padding()
                    
                    Spacer()
                }
                .padding(.horizontal,32)
                .background(.white)
                .cornerRadius(16)
                .shadow(color:.black.opacity(0.125), radius: 4)
                .padding(.horizontal)
                .foregroundColor(.black)
            }
        
        

        
    
}

struct ListItemView_Previews: PreviewProvider {
    static let contentViewModel = ContentViewModel()
    static var previews: some View {
        NavigationStack{
            ListItemView(number: 1, title: "Constants and Variables", subtitle: "Video - 17 minutes")
            .environmentObject(contentViewModel)
        }
    }
}
