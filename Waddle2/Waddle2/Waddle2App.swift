//
//  Waddle2App.swift
//  Waddle2
//
//  Created by Isla Just's Macbook Pro on 2022/10/19.
//

import SwiftUI
import Firebase
import FirebaseAuth

@main
struct Waddle2App: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
