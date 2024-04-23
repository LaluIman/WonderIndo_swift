//
//  HoriFoodView.swift
//  Wonderful Indonesia
//
//  Created by Lalu Iman Abdullah on 23/04/24.
//

import SwiftUI

struct HoriFoodView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.white)
                        .frame(width: 270, height: 200)
                        .padding(.horizontal, 5)
                        .padding(.vertical,5)
                        .shadow(radius: 2)
                        .overlay{
                            VStack{
                                Image("borobudur")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 250, height: 150)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                Text("Candi Borobudur")
                                    .font(.title2).bold()
                                .frame(width: 250, alignment: .leading)
                            }
                        }
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white)
                    .frame(width: 270, height: 200)
                    .padding(.horizontal, 5)
                    .shadow(radius: 2)
                    .overlay{
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
                    }
                       
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white)
                    .frame(width: 270, height: 200)
                    .padding(.horizontal, 5)
                    .shadow(radius: 2)
                    .overlay{
                        VStack {
                            Image("bromo")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 250, height: 150)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            Text("Gunung Bromo")
                                .font(.title2).bold()
                            .frame(width: 250, alignment: .leading)
                        }
                    }
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white)
                    .frame(width: 270, height: 200)
                    .padding(.horizontal, 5)
                    .shadow(radius: 2)
                    .overlay{
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
                        
                    }
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white)
                    .frame(width: 270, height: 200)
                    .padding(.horizontal, 5)
                    .shadow(radius: 2)
                    .overlay{
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
                
               
            }
            .padding(.horizontal, 5)
        }
    }
}

#Preview {
    HoriFoodView()
}
