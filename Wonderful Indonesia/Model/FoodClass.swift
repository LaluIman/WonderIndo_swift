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
            foodImage: "Rendang",
            foodInfo: ""
        ),
        //sate
        Food(
            foodName: "Sate",
            foodLocation: "",
            foodImage: "Sate",
            foodInfo: ""
        ),
        //Nasgor
        Food(
            foodName: "Nasi goreng",
            foodLocation: "",
            foodImage: "Nasig",
            foodInfo: ""
        ),
        //Nasi Kuning
        Food(
            foodName: "Nasi Kuning",
            foodLocation: "",
            foodImage: "Naskun",
            foodInfo: ""
        ),
        //indomie
        Food(
            foodName: "Indomie",
            foodLocation: "",
            foodImage: "Indomie",
            foodInfo: ""
        ),
        //Somay
        Food(
            foodName: "Siomay",
            foodLocation: "",
            foodImage: "Siomay",
            foodInfo: ""
        ),
        //esdoger
        Food(
            foodName: "Es doger",
            foodLocation: "",
            foodImage: "Esdog",
            foodInfo: ""
        ),
        //Nasi Padang
        Food(
            foodName: "Nasi Padang",
            foodLocation: "",
            foodImage: "Naspad",
            foodInfo: ""
        ),
        //pisang goreng
        Food(
            foodName: "Pisang Goreng",
            foodLocation: "",
            foodImage: "Pisang",
            foodInfo: ""
        ),
        //Cireng
        Food(
            foodName: "Cireng",
            foodLocation: "",
            foodImage: "Cireng",
            foodInfo: ""
        ),
    ]
}
