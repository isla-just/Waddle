//
//  ContentView.swift
//  WaddleWatch Watch App
//
//  Created by Isla Just's Macbook Pro on 2022/10/30.
//

import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/YY"
        return formatter
    }()
    
    @StateObject private var firestoreData = FirestoreManager()
    
    var body: some View {
        VStack {
            ScrollView(.vertical){
                Text("Our memories")
                    .font(.system(size: 20, weight: .medium, design: .rounded))
                    .foregroundColor(Color("Dark"))
                    .frame(width: .infinity, alignment: .leading).padding(.bottom, 0)
                    .multilineTextAlignment(.center).padding(.top, 80)
                
                Text("Documenting life’s small moments")
                    .font(.system(size: 15, weight: .regular, design: .rounded))
                    .foregroundColor(Color("Dark"))
                    .frame(width: .infinity, alignment: .leading).padding(.bottom, 20)
                    .multilineTextAlignment(.center)
            
              
            
                    
      ForEach(firestoreData.memories){memory in
            

              VStack{
                  
                  
                ZStack{
                    
              
                    VStack{
           
                         }.padding(20).background(
                                 
                                                                         Rectangle()
                                                                            .fill(.black.opacity(0.3))
                                                                             .cornerRadius(20)
                                                                             .shadow(
                                                                                 color: Color.gray.opacity(0.2),
                                                                                 radius: 20,
                                                                                 x: 0,
                                                                                 y: 2
                                                                             ).frame(width: 160)
                                                                     ).padding(.bottom, 5)
                    
                    WebImage(url: URL(string: memory.img))
                        .resizable()
                        .frame(width: 160, height: 150)
                        .aspectRatio(contentMode: .fill)
        
                        .cornerRadius(20)
             
                      
                    
                    Text("\(memory.date,formatter:Self.dateFormatter)")
                       .font(.system(size: 15, weight: .medium))
                       .multilineTextAlignment(.leading).foregroundColor(Color.white)
                     .padding(.top, 90)
                     .padding(.horizontal, 15)
                                 
                    }
                
                  Text(memory.description)
                                                                    .font(.system(size: 18, weight: .medium))
                                                                    .multilineTextAlignment(.center).foregroundColor(Color("Dark"))
                                                                    .lineLimit(2)
                                                                    .padding(.leading, -8).frame(width: 160).padding(.bottom, 20)
                            
                            
                            
                                                        }//vstack
                    
                                            }//foreach
 
                }.padding(.bottom, 80)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
