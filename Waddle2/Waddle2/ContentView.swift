//
//  ContentView.swift
//  Waddle2
//
//  Created by Isla Just's Macbook Pro on 2022/10/19.
//


import SwiftUI
import ConcentricOnboarding

struct ContentView: View {
    @State private var currentIndex: Int = 0
    
    var body: some View {
        
        Signup() 
//        Dashboard()
//        ConcentricOnboardingView(pageContents: MockData.pages.map { (PageView(page: $0), $0.color) })
//            .duration(1.0)
//            .nextIcon("chevron.forward")
//            .animationDidEnd {
//                print("Animation Did End")
//            }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
