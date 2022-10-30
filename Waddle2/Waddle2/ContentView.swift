//
//  ContentView.swift
//  Waddle2
//
//  Created by Isla Just's Macbook Pro on 2022/10/19.
//


import SwiftUI

struct ContentView: View {
    @AppStorage("userIsLoggedIn") var userIsLoggedIn: Bool = false;
    @State private var currentIndex: Int = 0
    
    var body: some View {
        
        if(userIsLoggedIn == true){
            BioAuthView()
        }else{
            OnboardingView()
        }
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
