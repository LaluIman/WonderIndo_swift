//
//  MainView.swift
//  Wonderful Indonesia
//
//  Created by Lalu Iman Abdullah on 07/04/24.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var placeManager: PlaceManager
    
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
                            
                        }
                        ForEach(placeManager.places) { place in
                            ListView(place: place)
                        }
                    }
                    .padding(.horizontal)
                    
                }
            }
        }
    }


#Preview {
    MainView(placeManager: PlaceManager())
}
