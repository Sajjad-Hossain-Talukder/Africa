//
//  MainView.swift
//  Africa
//
//  Created by Xotech on 02/01/2024.
//

import SwiftUI

struct MainView: View {
    //MARK: - PROPERTIES
    //MARK: - BODY
    var body: some View {
        TabView{
            ContentView().tabItem {
                Image(systemName: "square.grid.2x2")
                Text("Browse")
            }
            VideoListView().tabItem { 
                Image(systemName: "play.rectangle")
                Text("Watch")
            }
            MapView().tabItem { 
                Image(systemName: "map")
                Text("Locations")
            }
            GalleryView().tabItem { 
                Image(systemName: "photo")
                Text("Gallery")
            }
            
        }//: Tab View
    }
}


//MARK: - PREVIEW
#Preview {
    MainView()
}
