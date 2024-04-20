//
//  FoodView.swift
//  Wonderful Indonesia
//
//  Created by Lalu Iman Abdullah on 20/04/24.
//

import SwiftUI

struct FoodView: View {
    @ObservedObject var foodManager: FoodManager
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    FoodView(foodManager: FoodManager())
}
