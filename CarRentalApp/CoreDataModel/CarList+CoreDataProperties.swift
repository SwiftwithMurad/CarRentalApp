//
//  CarList+CoreDataProperties.swift
//  CarRentalApp
//
//  Created by Mac on 23.12.24.
//
//

import Foundation
import CoreData


extension CarList {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CarList> {
        return NSFetchRequest<CarList>(entityName: "CarList")
    }

    @NSManaged public var catgegory: String?
    @NSManaged public var engine: String?
    @NSManaged public var image: String?
    @NSManaged public var name: String?
    @NSManaged public var price: String?

}

extension CarList : Identifiable {

}