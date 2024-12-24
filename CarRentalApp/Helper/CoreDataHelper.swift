//
//  CoreDataHelper.swift
//  CarRentalApp
//
//  Created by Mac on 23.12.24.
//

import Foundation

class CoreDataHelper {
    let context = AppDelegate().persistentContainer.viewContext
    var cars = [CarList]()
//    let carStruct: [Car] = []
    var reloadCar: (() -> Void)?
    
    func fetchData() {
        do {
            cars = try context.fetch(CarList.fetchRequest())
            print(cars)
            reloadCar?()
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func createAndSaveData() {
        let car = CarList(context: context)
        car.image = cars[0].image
        car.engine = cars[0].engine
        car.name = cars[0].name
        car.price = cars[0].price
        do {
            try context.save()
            fetchData()
        } catch {
            print(error.localizedDescription)
        }
    }
}
