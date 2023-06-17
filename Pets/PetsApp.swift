//
//  PetsApp.swift
//  Pets
//
//  Created by Taciano Maximo dos Santos on 11/06/23.
//

import SwiftUI

@main
struct PetsApp: App {
    var body: some Scene {
        WindowGroup {
            let _ = UserDefaults.standard.set(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
            ContentView()
        }
    }
}
