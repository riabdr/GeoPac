//
//  GeoPacApp.swift
//  GeoPac
//
//  Created by Scholar on 6/11/24.
//

import SwiftUI

@main
struct GeoPacApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: ToDoItem.self)
        }
    }
}
