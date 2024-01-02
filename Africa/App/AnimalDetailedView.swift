//
//  AnimalDetailedView.swift
//  Africa
//
//  Created by Xotech on 02/01/2024.
//

import SwiftUI

struct AnimalDetailedView: View {
    //MARK: - PROPERTIES
    let animal : Animal
    
    
    //MARK: - BODY
    var body: some View {
        NavigationStack{
            ScrollView(.vertical, showsIndicators: false ) {
                
                
                VStack{
                    
                    // HEADER - COVER IMAGE
                    
                    Image(animal.image)
                        .resizable()
                        .scaledToFit()
            
                    
                    
                    // Title - underlined
                    
                    Text(animal.name.uppercased())
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.primary)
                        .padding(.vertical,8)
                        .background(
                            Color.accentColor
                                .frame(height: 6)
                                .offset(y:24)
                        )
                    
                    
                    // Headline
                    
                    Text(animal.headline)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.accentColor)
                        .padding(.horizontal)
                    
                    
                   
                    
                    
                    
                    Group {
                        // subheadline
                        SubHeadingView()
                        // Gallery
                        AnimalGalleryView(animal:animal)
                    }
                    .padding(.all,20)
                    
                   
                  

                    
                    
                    // Facts
                    
                    
                    // Description
                    
                    // Map
                    
                    
                    
                } //: Vstack
                
            }//: ScrollView
            
            .navigationTitle("Learn about \(animal.name)")
            .navigationBarTitleDisplayMode(.inline)
            
            
        }//: NavStack
       
        
    }
}


//MARK: - PREVIEW
#Preview {
    AnimalDetailedView(animal: animalTest)
}
