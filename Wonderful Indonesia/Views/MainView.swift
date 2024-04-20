//
//  TabView.swift
//  Wonderful Indonesia
//
//  Created by Lalu Iman Abdullah on 20/04/24.
//


import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomePage()
                .tabItem {
                    Label("Beranda", systemImage: "house")
                }
            
            PlaceView(placeManager: PlaceManager())
                .tabItem {
                    Label("Lokasi", systemImage: "map")
                }

            FoodView(foodManager: FoodManager())
                .tabItem {
                    Label("Makanan", systemImage: "fork.knife")
                }
            AuthorView()
                .tabItem {
                    Label("Author", systemImage: "person.circle")
                }
        }
    }
}

#Preview {
    MainView()
}

