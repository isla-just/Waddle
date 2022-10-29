//
//  WatchLink.swift
//  Waddle2
//
//  Created by Isla Just's Macbook Pro on 2022/10/06.
//

import SwiftUI

struct WatchLink: View {
    var body: some View {
        
        NavigationView(){
            ZStack(){

                VStack(){
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                      
                    
                    Image("ill2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 420, height: 320)
                

                    Text("Time to start tracking steps!")
                        .font(.system(size: 30, weight: .medium, design: .rounded))
                        .foregroundColor(Color("Dark"))
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(width: .infinity, alignment: .leading).padding([.leading, .trailing], 13.0).padding(.top, 50)
                        .multilineTextAlignment(.center)
                    
                    Text("Ensure your child’s Apple Watch is linked to this device and working with the health app")
                        .font(.system(size: 20, weight: .regular, design: .rounded))
                        .foregroundColor(Color("Dark"))
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(width: .infinity, alignment: .center).padding([.leading, .trailing], 20.0).padding(.top, 1)
                        .multilineTextAlignment(.center)
                    
                    HStack(){
                        NavigationLink(destination: Setup()){
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 25, style: .continuous)
                                    .fill(Color("Periwinkle"))
                                    .frame(width: 150, height: 60)
                                    .padding(.top, 20)
                                
                                Text("help me")
                                    .font(.system(size: 18, weight: .regular))
                                    .multilineTextAlignment(.center).foregroundColor(Color("Dark"))
                                 .padding(.top, 20)
                            }.padding(.top, 30).padding(.bottom, 50)
                        }.navigationBarBackButtonHidden(true).navigationBarHidden(true).padding(.trailing)
                        
                        
                        NavigationLink(destination: Setup()){
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 25, style: .continuous)
                                    .fill(Color("Dark2"))
                                    .frame(width: 150, height: 60)
                                    .padding(.top, 20)
                                
                                Text("Got it!")
                                    .font(.system(size: 18, weight: .semibold))
                                    .multilineTextAlignment(.center).foregroundColor(.white)
                                    .padding(.top, 20)
                            }.padding(.top, 30).padding(.bottom, 50)
                        }.navigationBarBackButtonHidden(true).navigationBarHidden(true)
                        
                    }.frame(width: .infinity).padding(30)
                    
                    Spacer()
                      
                }

            }.background(Color("Light"))
            
         
        }.background(Color("Light")).navigationBarBackButtonHidden(true).navigationBarHidden(true)
    }
}

struct WatchLink_Previews: PreviewProvider {
    static var previews: some View {
        WatchLink()
    }
}
