//
//  Setup.swift
//  Waddle2
//
//  Created by Isla Just's Macbook Pro on 2022/10/06.
//

import SwiftUI

struct Setup: View {
    var body: some View {
        NavigationView(){
            ZStack(){
                Image("background2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 390, height: 842).ignoresSafeArea()
                
                VStack(){
                    Text("So here’s the deal...")
                        .font(.system(size: 30, weight: .medium, design: .rounded))
                        .foregroundColor(Color("Dark"))
                        .frame(width: 300, alignment: .center).padding(.bottom, 5)
                        .multilineTextAlignment(.center)
                    
                    Text("we need your permission to use your microphone, camera and to access your step count")
                        .font(.system(size: 20, weight: .regular, design: .rounded))
                        .foregroundColor(Color("Dark"))
                        .frame(width: 300, alignment: .center).padding(.bottom, 20)
                        .multilineTextAlignment(.center)
                    

                
                    NavigationLink(destination: Dashboard()){
                      
                    ZStack{
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .fill(Color("Dark2"))
                            .frame(width: .infinity, height: 60)
                            .padding(.horizontal, 40).padding(.top, 20)

                        Text("I agree")
                            .font(.system(size: 18, weight: .semibold))
                            .multilineTextAlignment(.center).foregroundColor(.white)
                            .padding(.horizontal, 50).padding(.top, 20)
                    }
                    }.navigationBarBackButtonHidden(true).navigationBarHidden(true)
                        
                    HStack(alignment: .center){
                        Text("why do you need this information?")
                            .font(.system(size: 18, weight: .medium))
                            .multilineTextAlignment(.center).foregroundColor(Color("Dark2")).underline()
                                            
                    }
                    .padding(.top)
                }
                
            }
            
         
        }.background(Color("Light")).navigationBarBackButtonHidden(true).navigationBarHidden(true)
    }
}

struct Setup_Previews: PreviewProvider {
    static var previews: some View {
        Setup()
    }
}
