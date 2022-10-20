//
//  WaddleApp.swift
//  Waddle
//
//  Created by Isla Just's Macbook Pro on 2022/10/05.
//

import SwiftUI
import Firebase
import FirebaseAuth

@main
struct WaddleApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
