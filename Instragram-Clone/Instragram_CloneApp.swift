//
//  Instragram_CloneApp.swift
//  Instragram-Clone
//
//  Created by Siriluk Rachaniyom on 14/10/21.
//

import SwiftUI
import Firebase

@main
struct Instragram_CloneApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AuthViewModel.shared)
        }
    }
}
