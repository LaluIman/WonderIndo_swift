//
//  FoodClass.swift
//  Wonderful Indonesia
//
//  Created by Lalu Iman Abdullah on 20/04/24.
//

import Foundation

struct Food: Identifiable{
    var id = UUID()
    var foodName: String
    var foodLocation: String
    var foodImage: String
    var foodInfo: String
}

class FoodManager: ObservableObject{
    @Published var foods: [Food] = [
        // rendang
        Food(
            foodName: "Rendang",
            foodLocation: "",
            foodImage: "",
            foodInfo: ""
        ),
        //sate
        Food(
            foodName: "Sate",
            foodLocation: "",
            foodImage: "",
            foodInfo: ""
        ),
        //Nasgor
        Food(
            foodName: "Nasi goreng",
            foodLocation: "",
            foodImage: "",
            foodInfo: ""
        ),
        //Nasi Kuning
        Food(
            foodName: "Nasi Kuning",
            foodLocation: "",
            foodImage: "",
            foodInfo: ""
        ),
        //indomie
        Food(
            foodName: "Indomie",
            foodLocation: "",
            foodImage: "",
            foodInfo: ""
        ),
        //Somay
        Food(
            foodName: "Siomay",
            foodLocation: "",
            foodImage: "",
            foodInfo: ""
        ),
        //esdoger
        Food(
            foodName: "Es doger",
            foodLocation: "",
            foodImage: "",
            foodInfo: ""
        ),
        //Nasi Padang
        Food(
            foodName: "Nasi Padang",
            foodLocation: "",
            foodImage: "",
            foodInfo: ""
        ),
        //pisang goreng
        Food(
            foodName: "Pisang Goreng",
            foodLocation: "",
            foodImage: "",
            foodInfo: ""
        ),
        //Cireng
        Food(
            foodName: "Cireng",
            foodLocation: "",
            foodImage: "",
            foodInfo: ""
        ),
    ]
}
