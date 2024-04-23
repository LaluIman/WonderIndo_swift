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
                        VStack {
                            Text("Tempat trending ⭐️")
                                .font(.title3).bold()
                            HStack {
                                Image(systemName: "info.circle")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                                Text("Menurut source dari Google")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                        }
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        // horizontal view
                        HoriView()
                        
                        NavigationLink("Lihat selengkapnya ",destination: PlaceView(placeManager: PlaceManager()))
                            .padding(.horizontal)
                        .frame(maxWidth: .infinity, alignment: .leading)
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
