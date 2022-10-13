//
//  Memory.swift
//  Waddle
//
//  Created by Isla Just's Macbook Pro on 2022/10/13.
//

import SwiftUI

struct Memory: View {
    var body: some View {
        NavigationView(){
            ZStack(){
                
                ZStack{
                    Image("scribbleHeader")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 390).ignoresSafeArea().padding(.top,-400)
                }

                ScrollView(.vertical){
                    Text("A waddle in the park")
                        .font(.system(size: 28, weight: .medium, design: .rounded))
                        .foregroundColor(Color("Dark"))
                        .frame(width: 300, alignment: .leading).padding(.bottom, 0)
                        .multilineTextAlignment(.leading).padding(.top, 80)
                    
                    Text("21 August 2021")
                        .font(.system(size: 20, weight: .regular, design: .rounded))
                        .foregroundColor(Color("Dark"))
                        .frame(width: 300, alignment: .leading).padding(.bottom, 20)
                        .multilineTextAlignment(.leading)
                    
                
                    HStack(){
                    
                        Image(systemName: "star.fill")
                            .resizable()
                            .foregroundColor(.white)
                            .aspectRatio(contentMode: .fit)
                            .frame(width:30, alignment: .trailing)
                            .padding(.top, 10).padding(.leading, 220)
                            
               
                        
                        
                    }.padding(20).background(
                        
                        Rectangle()
                        .fill(Color("Dark"))
                        .cornerRadius(20)
                        .shadow(
                            color: Color.gray.opacity(0.2),
                            radius: 20,
                            x: 0,
                            y: 2
                        ).frame(width:300, height:348).padding(.top,280)
                    )
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .fill(Color("Periwinkle"))
                            .frame(width: .infinity, height: 60)
                            .padding(.horizontal, 80).padding(.top, 20)

                        Text("201 steps")
                            .font(.system(size: 18, weight: .regular))
                            .multilineTextAlignment(.center).foregroundColor(Color("Dark"))
                            .padding(.horizontal, 0).padding(.top, 20)
                    }.padding(.top, 210)
                    
                    NavigationLink(destination: Dashboard()){
                        ZStack{
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .fill(Color("Dark2"))
                                .frame(width: .infinity, height: 60)
                                .padding(.horizontal, 50).padding(.top, 20)
                            
                            Text("Back home")
                                .font(.system(size: 18, weight: .semibold))
                                .multilineTextAlignment(.center).foregroundColor(.white)
                                .padding(.horizontal, 0).padding(.top, 20)
                        }
                    }
                 
                    
                   
                   
                }
                
                ZStack{
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color("Dark"))
                        .frame(width: .infinity, height: 90)


                    HStack{

                        NavigationLink(destination: Dashboard()){
                            VStack{
                                Text("home")
                                
                                    .font(.system(size: 20, weight: .regular))
                                    .multilineTextAlignment(.center).foregroundColor(.white)
                            }.padding(.top, -20).padding()
                        }

                    
                        VStack{
                            Text("memories")
                                .underline(color: Color("Dark2"))
                                .font(.system(size: 20, weight: .semibold))
                                .multilineTextAlignment(.center).foregroundColor(.white)
                        }.padding(.top, -20).padding()
                 

                        NavigationLink(destination: Add()){
                            VStack{
                                Text("add")
                                    .font(.system(size: 20, weight: .regular))
                                    .multilineTextAlignment(.center).foregroundColor(.white)
                            }.padding(.top, -20).padding()
                        }.navigationBarBackButtonHidden(true).navigationBarHidden(true)
                       

                    }.padding(.horizontal, 30)
                }.padding(.bottom, 0).padding(.top, 750)
                
            }
            
         
        }.background(Color("Light")).navigationBarBackButtonHidden(true).navigationBarHidden(true)
    }
}

struct Memory_Previews: PreviewProvider {
    static var previews: some View {
        Memory()
    }
}
