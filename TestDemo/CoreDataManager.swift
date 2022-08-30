//
//  CoreDataManager.swift
//  TestDemo
//
//  Created by Andy on 2022/8/23.
//

import Foundation
import CoreData

class CoreDataManager {
    let persistentContainer: NSPersistentContainer
    static let shared = CoreDataManager()

    private init() {

        ValueTransformer.setValueTransformer(NSColorTransformer(), forName: NSValueTransformerName("NSColorTransformer"))

        persistentContainer = NSPersistentContainer(name: "RoomModel")
        persistentContainer.loadPersistentStores{ description, error in
            if let error = error {
                fatalError("Unable to initialize Core Data \(error)")
            }
        }
    }

}
