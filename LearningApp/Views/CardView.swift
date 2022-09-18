//
//  CardView.swift
//  LearningApp
//
//  Created by Alen Mujkic on 18.09.22.
//

import SwiftUI

struct CardView: View {
    let title : String
    let subtitle : String
    let image : String
    let contentInfo : ContentInfo
    var body: some View {
        ZStack{
            
            HStack{
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100)
                    .clipShape(Circle())
                    
                VStack(alignment:.leading,spacing: 8){
                  
                    Text(title)
                        .font(.headline)
                        .bold()
                    
                    
                    Text(subtitle)
                        .font(.caption)
                        .multilineTextAlignment(.leading)
                    
                   
                    
                    ContentInfoHStack(contentInfo: contentInfo)
                        .padding([.vertical],8)
                       
                    
                }
                .padding(8)
                
            }
            .padding()
                
        }
        .background(.white)
        .cornerRadius(16)
        .shadow(color:.black.opacity(0.125), radius: 4)
        .frame(maxHeight:175)
        
        .padding()
    }
}

struct ContentInfoHStack : View {
    let contentInfo : ContentInfo
    var body: some View{
        HStack{
            HStack{
                Image(systemName: "book")
                    
                Text(contentInfo.contentCount)
                    .font(.caption2)
            }
            Spacer()
            HStack{
                Image(systemName: "clock")
                Text(contentInfo.duration)
                    .font(.caption2)
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(title: "Learn Swift", subtitle: "Understand the fundamentals of the Swift programming language.", image: "swift", contentInfo: ContentInfo(contentCount: "20 Lessons", duration: "3 Hours"))
    }
}
