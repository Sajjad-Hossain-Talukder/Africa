//
//  InsetFactView.swift
//  Africa
//
//  Created by Xotech on 02/01/2024.
//

import SwiftUI

struct InsetFactView: View {
    
    //MARK: - PROPERTIES
    let animal:Animal
    
    //MARK: - BODY
    var body: some View {
        
        GroupBox {
            TabView {
                
                ForEach(animal.fact,id:\.self) { item in
                    Text(item)
                        .multilineTextAlignment(.leading)
                        .font(.footnote)
                }
               
            } //: TAB
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148,idealHeight: 168, maxHeight: 180)
        }//: GroupBox
    }
}


//MARK: - PREVIEW
#Preview {
    InsetFactView(animal: animalTest)
}
