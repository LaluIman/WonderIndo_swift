//
//  AuthorView.swift
//  Wonderful Indonesia
//
//  Created by Lalu Iman Abdullah on 07/04/24.
//

import SwiftUI

struct AuthorView: View {
    var body: some View {
        NavigationView{
                    VStack{
                        Image("Author")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 200, height: 200)
                            .clipShape(Circle())
                            .padding(.bottom)
                        Text("Lalu Iman Abdullah")
                            .font(.title).bold()
                        Text("Front-end & iOS developer")
//                        VStack{
//                            Link("Portfolio", destination: URL(string:                "https://laluiman.vercel.app/")!)
//                                .foregroundColor(.white)
//                                    .font(.system(size: 20))
//                                    .padding()
//                                    .background(Color.blue.cornerRadius(10))
//                            Link("Linkedin", destination: URL(string: "https://www.linkedin.com/in/lalu-iman-abdullah/")!)
//                                .foregroundColor(.white)
//                                    .font(.system(size: 20))
//                                    .padding()
//                                    .background(Color.blue.cornerRadius(10))
//                            Link("Github ", destination: URL(string: "https://github.com/LaluIman")!)
//                                .foregroundColor(.white)
//                                    .font(.system(size: 20))
//                                    .padding()
//                                    .background(Color.blue.cornerRadius(10))
//                        }
//                        .padding()
                    }
                    .padding(.top,100)
                    .frame(maxHeight: .infinity, alignment: .top)
        }
    }
}

#Preview {
    AuthorView()
}
