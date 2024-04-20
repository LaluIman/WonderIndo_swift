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
                Image("borobudur")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 250, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Image("komodo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 250, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Image("bromo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 250, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Image("prambanan")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 250, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Image("ampat")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 250, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    HoriView()
}
