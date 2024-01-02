//
//  AnimalListView.swift
//  Africa
//
//  Created by Xotech on 02/01/2024.
//

import SwiftUI

struct AnimalListView: View {
    //MARK: - PROPERTIES
    let animal : Animal
    //MARK: - BODY
    
    var body: some View {
        
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90,height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading , spacing: 8 ) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing,8)
                
            }//:Vstack
        } //: Hstack
            
    }
}


//MARK: - PREVIEW
#Preview {
    AnimalListView(animal: animalTest)
}
