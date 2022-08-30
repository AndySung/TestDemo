//
//  TestDemoApp.swift
//  TestDemo
//
//  Created by Andy on 2022/8/23.
//

import SwiftUI

@main
struct TestDemoApp: App {
    var body: some Scene {
        WindowGroup {
            let viewContext = CoreDataManager.shared.persistentContainer.viewContext
            ContentView().environment(\.managedObjectContext, viewContext)
        }
    }
}
