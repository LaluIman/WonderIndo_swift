//
//  MainView.swift
//  Wonderful Indonesia
//
//  Created by Lalu Iman Abdullah on 07/04/24.
//

import SwiftUI

struct PlaceView: View {
    @ObservedObject var placeManager: PlaceManager
    @State var selected: Place? = nil
    @State private var searchTerm: String = ""
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                //top
                VStack{
                    VStack{
                        Image("id 2")
                            .renderingMode(.original)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 420, height: 200)
                        Section{
                            HStack{
                                TextField("Cari Lokasi", text: $searchTerm)
                                Image(systemName: "magnifyingglass")
                            }
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal, 15)
                            .padding(.vertical)
                            .shadow(radius: 1)
                            
                        }
                        VStack{
                            Text("Tempat popular ⭐️")
                                .font(.title2).bold()
                                .frame(maxWidth: .infinity,alignment: .leading)
                                .padding(.horizontal)
                            ForEach(searchTerm.isEmpty ? placeManager.places :placeManager.places.filter {
                                $0.name.lowercased().contains(searchTerm.lowercased()) }) { place in
                                    ListView(place: place)
                                        .onTapGesture {
                                            selected = place
                                        }
                                }
                                .fullScreenCover(item: $selected) { place in
                                    DetailView(place: place)
                                }
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .navigationBarItems(leading:
                                    Image("wonderful")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 150)
            )
        }
     }
    }


#Preview {
    PlaceView(placeManager: PlaceManager())
}
