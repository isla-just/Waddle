//
//  OnboardingView.swift
//  Waddle2
//
//  Created by Isla Just's Macbook Pro on 2022/10/29.
//

import SwiftUI
import ConcentricOnboarding

struct OnboardingView: View {
    
    @State var userIsLoggedIn: Bool = false
    @State var index = 0
    
    var body: some View {
        
        if index == 3{
            Login()
        }else{
            content
        }
    }
    
    @State var pageIndex = 0
    var content: some View {
                ConcentricOnboardingView(pageContents: MockData.pages.map { (PageView(page: $0), $0.color) })
                    .duration(2.0)
                    .nextIcon("chevron.forward")
                    .animationDidEnd {
                        index = index + 1
                        print(index)
                    }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
