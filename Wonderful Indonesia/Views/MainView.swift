//
//  MainView.swift
//  Wonderful Indonesia
//
//  Created by Lalu Iman Abdullah on 07/04/24.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var placeManager: PlaceManager
    @State private var searchTerm: String = ""
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                    //top
                VStack{
                    HStack{
                        Image("wonderful")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150)
                        Spacer()
                        HStack{
                            NavigationLink(destination: AuthorView()){
                                Text("Author")
                                    .foregroundStyle(.blue)
                                    .font(.system(size: 20))
                                Image(systemName: "person.circle")
                                    .font(.title)
                                .foregroundStyle(.blue)}
                        }
                    }
                    .padding(.horizontal,20)
                    VStack{
                        Image("id 2")
                            .renderingMode(.original)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 420, height: 200)
                        Section{
                            HStack{
                                TextField("Search place", text: $searchTerm)
                                Image(systemName: "magnifyingglass")
                            }
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .foregroundColor(.black)
                            .padding(.horizontal, 20)
                            .padding(.vertical)
                            
                        }
                        ForEach(searchTerm.isEmpty ? placeManager.places :placeManager.places.filter {
                            $0.name.lowercased().contains(searchTerm.lowercased()) }) { place in
                            ListView(place: place)
                        }
                    }
                    .padding(.horizontal)
                  }
                }
            .background(.ultraThinMaterial)
            }
        }
    }


#Preview {
    MainView(placeManager: PlaceManager())
}
