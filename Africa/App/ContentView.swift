//
//  ContentView.swift
//  Africa
//
//  Created by Xotech on 02/01/2024.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    let animals : [Animal] = Bundle.main.decode("animals.json")
    
    //MARK: - BODY
    
    var body: some View {
        NavigationStack {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    NavigationLink {
                        AnimalDetailedView(animal: animal)
                    } label: {
                        AnimalListView(animal: animal)
                    }//: NavLink
                }
                .listRowInsets(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                
                
            }
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
        }//: Nav Stack
    }
}


//MARK: - PREVIEW
#Preview {
    ContentView()
}
