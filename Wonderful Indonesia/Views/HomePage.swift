//
//  HomePage.swift
//  Wonderful Indonesia
//
//  Created by Lalu Iman Abdullah on 20/04/24.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack {
                    Text("Selamat datang 👋")
                        .font(.title).bold()
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    VStack{
                        HStack {
                            Text("Tempat trending ⭐️")
                                .font(.title2).bold()
                            Spacer()
                            NavigationLink("See more",destination: PlaceView(placeManager: PlaceManager()))
                        }
                        .padding(.horizontal)
                        //place horizontal view
                        HoriView()
                        
                        HStack {
                            Text("Makanan populer 🍽️")
                                .font(.title2).bold()
                            Spacer()
                            NavigationLink("See more",destination: FoodView(foodManager: FoodManager()))
                        }
                        .padding(.top, 20)
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        HoriFoodView()
                    }
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
    HomePage()
}
