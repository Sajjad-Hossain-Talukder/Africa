//
//  AnimalGalleryView.swift
//  Africa
//
//  Created by Xotech on 02/01/2024.
//

import SwiftUI

struct AnimalGalleryView: View {
    //MARK: - PROPERTIES
    let animal: Animal
    //MARK: - BODY
    
    
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack(alignment:.center,spacing: 15){
                ForEach(animal.gallery, id:\.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                }
                
                
            }//: HStack
        }//: Scroll View
        
    }
}


//MARK: - PREVIEW

#Preview {
    AnimalGalleryView(animal: animalTest)
}
