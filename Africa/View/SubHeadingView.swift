//
//  SubHeadingView.swift
//  Africa
//
//  Created by Xotech on 02/01/2024.
//

import SwiftUI

struct SubHeadingView: View {
    //MARK: - PROPERTIES
    let imageName : String
    let cap  : String
    //MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text(cap)
                .font(.title3)
            .fontWeight(.bold)
        }//: HStack
        
        
    }
}


//MARK: - PREVIEW
#Preview {
    SubHeadingView(imageName: "square", cap: "Hola")
}
