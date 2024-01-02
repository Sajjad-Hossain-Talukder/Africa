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
                    
                    
                   
                    
                    // Heading
                    
                    Group {
                        // subheadline
                        SubHeadingView(imageName: "photo.on.rectangle.angled", cap: "Wilderness in Pictures")
                        // Gallery
                        AnimalGalleryView(animal:animal)
                    }
                    .padding(.vertical)
                    
                   
                    
                    // Facts
                    
                    Group{
                        SubHeadingView(imageName: "questionmark.circle", cap: "Did you know?")
                        InsetFactView(animal: animal)
                            .padding(.all)
                        
                    }
                    
                    
                    
                    
                    // Description
                    Group {
                        SubHeadingView(imageName: "info.circle", cap: "All about \(animal.name)")
                        
                        Text(animal.description)
                            .multilineTextAlignment(.leading)
                            .layoutPriority(1)
                          
                    }
                    .padding(.all)
                    
                    
                    
                    
                    // Map
                    Group {
                        SubHeadingView(imageName: "map", cap: "Locations")
                        
                          
                    }
                    .padding(.all)
                    
                    
                    // Link
                    
                    
                    
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
