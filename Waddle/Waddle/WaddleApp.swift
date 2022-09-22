//
//  WaddleApp.swift
//  Waddle
//
//  Created by Isla Just's Macbook Pro on 2022/09/22.
//

import SwiftUI

@main
struct WaddleApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
