//
//  PageView.swift
//  Waddle2
//
//  Created by Isla Just's Macbook Pro on 2022/10/05.
//

import SwiftUI

struct PageView: View {
    
    let page: PageData
    let imageWidth: CGFloat = 356
    let textWidth: CGFloat = 376
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some View {
        let size = UIImage(named: page.imageName)?.size ?? .zero
        let aspect = size.width / size.height
        
        return VStack(alignment: .center, spacing: 0) {
            
            
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 73)
                .padding(.top, -100).ignoresSafeArea()
            
            
    
            VStack(alignment: .center, spacing: 5) {
                
                Image(page.imageName)
                    .resizable()
                    .aspectRatio(aspect, contentMode: .fill)
                    .frame(width: imageWidth, height: imageWidth).padding(.bottom, 30)
                
                Text(page.header)
                    .font(.system(size: 30, weight: .medium, design: .rounded))
                    .foregroundColor(page.textColor)
                    .frame(width: 300, alignment: .center).padding(.bottom, 10)
                    .multilineTextAlignment(.center)
                Text(page.content)
                    .font(Font.system(size: 20, weight: .regular, design: .rounded))
                    .foregroundColor(page.textColor)
                    .frame(width: 300, alignment: .center)
                    .multilineTextAlignment(.center).padding(.bottom, 30)
                
//                NavigationLink(destination: Login()){
//                    ZStack{
//                        RoundedRectangle(cornerRadius: 25, style: .continuous)
//                            .fill(Color("Dark"))
//                            .frame(width: .infinity, height: 60)
//                            .padding(.horizontal, 80).padding(.top, 20)
//
//                        Text("get started")
//                            .font(.system(size: 18, weight: .regular))
//                            .multilineTextAlignment(.center).foregroundColor(.white)
//                            .padding(.horizontal, 0).padding(.top, 20)
//                    }.padding(.bottom, 120)
//                        .onTapGesture{
//                            isOnboarding.toggle()
//                        }
//                }
                
        
            }
        }
    }
}
