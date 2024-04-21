//
//  HoriView.swift
//  Wonderful Indonesia
//
//  Created by Lalu Iman Abdullah on 20/04/24.
//

import SwiftUI

struct HoriView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack {
                VStack {
                    Image("borobudur")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 250, height: 150)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    Text("Candi Borobudur")
                        .font(.title2).bold()
                    .frame(width: 250, alignment: .leading)
                }
                
                VStack {
                    Image("komodo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 250, height: 150)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    Text("Pulau Komodo")
                        .font(.title2).bold()
                    .frame(width: 250, alignment: .leading)
                }
                
                VStack {
                    Image("bromo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 250, height: 150)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    Text("Bromo")
                        .font(.title2).bold()
                    .frame(width: 250, alignment: .leading)
                }
                
                VStack {
                    Image("prambanan")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 250, height: 150)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    Text("Candi Prambanan")
                        .font(.title2).bold()
                    .frame(width: 250, alignment: .leading)
                }
                
                VStack {
                    Image("ampat")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 250, height: 150)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    Text("Raja Ampat")
                        .font(.title2).bold()
                    .frame(width: 250, alignment: .leading)
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    HoriView()
}
