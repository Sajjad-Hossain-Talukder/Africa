//
//  SubHeadingView.swift
//  Africa
//
//  Created by Xotech on 02/01/2024.
//

import SwiftUI

struct SubHeadingView: View {
    //MARK: - PROPERTIES
    //MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName: "photo.on.rectangle.angled")
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text("Wilderness in Pictures")
                .font(.title3)
            .fontWeight(.bold)
        }//: HStack
        
        
    }
}


//MARK: - PREVIEW
#Preview {
    SubHeadingView()
}
