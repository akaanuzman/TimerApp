//
//  TimerAppApp.swift
//  TimerApp
//
//  Created by Ahmet Kaan UZMAN on 14.01.2022.
//

import SwiftUI

@main
struct TimerAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
