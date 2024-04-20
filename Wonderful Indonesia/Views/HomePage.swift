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
                    Text("Selamat datang")
                        .font(.title).bold()
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                   HoriView()
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
