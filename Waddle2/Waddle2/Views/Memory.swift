//
//  Memory.swift
//  Waddle2
//
//  Created by Isla Just's Macbook Pro on 2022/10/13.
//

import SwiftUI
import SDWebImageSwiftUI

struct Memory: View {
    
    var memory: MemoryModel
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/YY"
        return formatter
    }()
    
    
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
                    Text(memory.description)
                        .font(.system(size: 28, weight: .medium, design: .rounded))
                        .foregroundColor(Color("Dark"))
                        .frame(width: 300, alignment: .leading).padding(.bottom, 0)
                        .multilineTextAlignment(.leading).padding(.top, 80)
                    
                    Text("\(memory.date,formatter:Self.dateFormatter)")
                        .font(.system(size: 20, weight: .regular, design: .rounded))
                        .foregroundColor(Color("Dark"))
                        .frame(width: 300, alignment: .leading).padding(.bottom, 20)
                        .multilineTextAlignment(.leading)
                    
                
                    WebImage(url: URL(string: memory.img))
                        .resizable()
                        .frame(width:300, height:318)
                        .cornerRadius(20)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(20)
                        .shadow(
                            color: Color.gray.opacity(0.2),
                            radius: 20,
                            x: 0,
                            y: 2
                        )
                    
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .fill(Color("Periwinkle"))
                            .frame(width: .infinity, height: 60)
                            .padding(.horizontal, 80).padding(.top, 20)

                        Text("\(memory.steps) waddles")
                            .font(.system(size: 18, weight: .regular))
                            .multilineTextAlignment(.center).foregroundColor(Color("Dark"))
                            .padding(.horizontal, 0).padding(.top, 20)
                    }.padding(.top, -60)
                    
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
                }.padding(.bottom, 0).padding(.top, 730)
                
            }.background(Color("Light"))
            
         
        }.background(Color("Light")).navigationBarBackButtonHidden(true).navigationBarHidden(true)
    }
}

struct Memory_Previews: PreviewProvider {
    static var previews: some View {
        Memory(memory: FirestoreManager().memories[0])
    }
}
