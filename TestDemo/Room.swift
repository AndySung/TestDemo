//
//  Room.swift
//  TestDemo
//
//  Created by Andy on 2022/8/23.
//

import Foundation
import CoreData
import AppKit

@objc(Room)
class Room: NSManagedObject {

}

extension Room {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Room> {
        return NSFetchRequest<Room>(entityName: "Room")
    }

    @NSManaged public var color: NSColor?
    @NSManaged public var name: String?
}

extension Room : Identifiable {

}
