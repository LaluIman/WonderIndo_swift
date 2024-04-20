//
//  ListView.swift
//  Wonderful Indonesia
//
//  Created by Lalu Iman Abdullah on 07/04/24.
//

import SwiftUI

struct ListView: View {
    var place: Place
    var body: some View {
        VStack {
            HStack{
                    Image(place.locationImage)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 140, height: 130)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    VStack(alignment: .leading, spacing: 6){
                            Text(place.name)
                                .font(.system(size: 25)).bold()
                            HStack{
                                Image(systemName: "mappin.and.ellipse.circle")
                                    .foregroundStyle(.red)
                                    .font(.headline)
                                Text(place.location)
                                    .font(.subheadline)
                            }
                    }
                    .frame(width: 220,height: 120 ,alignment: .leading)
            }
        }
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(radius: 1)
        .shadow(radius: 1,x: 6,y: 5)
        .padding(.bottom)
    }
}

#Preview {
    ListView(place: Place(
        name:"Candi Borobudur",
        location: "Magelang, Jawa Tengah",
        info: "Candi Borobudur adalah sebuah candi Buddha yang terletak di Borobudur, Magelang, Jawa Tengah, Indonesia. Candi ini terletak kurang lebih 100 km di sebelah barat daya Semarang, 86 km di sebelah barat Surakarta, dan 40 km di sebelah barat laut Yogyakarta.",
        locationImage: "borobudur",
        provinsiImage: "borobudurpro"
    ))
}
