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
                        .frame(width: 150, height: 120)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    VStack(alignment: .leading, spacing: 6){
                            Text(place.name)
                                .font(.title).bold()
                            HStack{
                                Image(systemName: "mappin.and.ellipse")
                                    .foregroundStyle(.red)
                                    .font(.title3)
                                Text(place.location)
                            }
                    }
                    .frame(width: 240,height: 120 ,alignment: .leading)
            }
        }
        .padding()
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
