//
//  CarList.swift
//  CarRentalApp
//
//  Created by Mac on 23.12.24.
//

import Foundation

struct Car {
    let name: String?
    let model: String?
    let image: String?
    let engine: String?
    let price: String?
    let category: CarCategory?
}

struct CarCategory {
    let name: String?
    let image: String?
    let size: String?
}

let cars: [Car] = [Car(name: "KIA", model: "Stinger", image: "car_1", engine: "6-Cyl 2.5 Liter", price: "$20000", category: CarCategory(name: "Standard", image: "car_1", size: "4")),
                   Car(name: "Mercedes", model: "C-class", image: "car_2", engine: "6-Cyl 3.0 Liter", price: "$40000", category: CarCategory(name: "Prestige", image: "car_2", size: "5")),
                   Car(name: "Jeep", model: "GrandCheeroke", image: "car_3", engine: "8-Cyl 5.0 Liter", price: "$70000", category: CarCategory(name: "SUV", image: "car_3", size: "3")),
                   Car(name: "Toyota", model: "Yaris İA", image: "car_4", engine: "4-Cyl 1.5 Liter", price: "$10000", category: CarCategory(name: "Comfort", image: "car_4", size: "5"))]
