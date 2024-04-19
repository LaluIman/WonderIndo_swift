//
//  DetailView.swift
//  Wonderful Indonesia
//
//  Created by Lalu Iman Abdullah on 10/04/24.
//

import SwiftUI

struct DetailView: View {
    let place: Place
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    Image(place.locationImage)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 400, height: 290)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding()
                    VStack{
                        Text(place.name)
                            .font(.system(size: 40)).bold()
                            .padding(.bottom,3)
                        HStack{
                            Image(systemName: "mappin.and.ellipse")
                                .foregroundStyle(.red)
                                .font(.title2)
                            Text(place.location)
                                .font(.title2)
                        }
                        .padding(.bottom, 30)
                        VStack{
                            Text(place.info)
                                .font(.headline)
                        }
                        .frame(width: 400, alignment: .leading)
                        VStack{
                            Image(place.provinsiImage)
                                .resizable()
                                .frame(width: 400, height: 290)
                        }
                    }
                }
            }
            .navigationTitle(place.name)
            .navigationBarItems(trailing: Button(action: {
                    }) {
                        ZStack{
                            Image(systemName: "xmark.circle")
                                .foregroundStyle(.white)
                                .font(.title)
                            Image(systemName: "xmark.circle.fill")
                                  .foregroundStyle(.black)
                              .font(.title)
                              .onTapGesture{dismiss()}
                        }
                    })
        }
    }
}

#Preview {
    DetailView(place: Place(
        name:"Candi Borobudur",
        location: "Magelang, Jawa Tengah",
        info: "Candi Borobudur adalah sebuah candi Buddha yang terletak di Borobudur, Magelang, Jawa Tengah, Indonesia. Candi ini terletak kurang lebih 100 km di sebelah barat daya Semarang, 86 km di sebelah barat Surakarta, dan 40 km di sebelah barat laut Yogyakarta.",
        locationImage: "borobudur",
        provinsiImage: "Boro"
    ))
}
