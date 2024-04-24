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
                                Image("Rendang")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 250, height: 150)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                Text("Rendang")
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
                            Image("Sate")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 250, height: 150)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            Text("Sate ayam")
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
                            Image("Nasig")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 250, height: 150)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            Text("Nasi goreng")
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
                            Image("Naskun")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 250, height: 150)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            Text("Nasi Kuning")
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
                            Image("Esdog")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 250, height: 150)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            Text("Es doger")
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
