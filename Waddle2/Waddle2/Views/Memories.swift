//
//  Memories.swift
//  Waddle2
//
//  Created by Isla Just's Macbook Pro on 2022/10/13.
//

import SwiftUI

struct Memories: View {
    
    @StateObject var firestoreManager = FirestoreManager()
    var memories: [MemoryModel] = []
    
    let columns = [GridItem(.flexible(maximum: 190)),
                   GridItem(.fixed(150))]
    
    var body: some View {
        NavigationView(){
            ZStack(){
                
                
          
                ScrollView(.vertical){
                    Text("Your memory journal")
                        .font(.system(size: 28, weight: .medium, design: .rounded))
                        .foregroundColor(Color("Dark"))
                        .frame(width: 300, alignment: .leading).padding(.bottom, 0)
                        .multilineTextAlignment(.leading).padding(.top, 80)
                    
                    Text("Documenting life’s small moments")
                        .font(.system(size: 20, weight: .regular, design: .rounded))
                        .foregroundColor(Color("Dark"))
                        .frame(width: 300, alignment: .leading).padding(.bottom, 20)
                        .multilineTextAlignment(.leading)
                    
                    List(firestoreManager.memories){memory in
                        VStack{
                            
                            Text("Am I fetching any memories?")
                            
                            Text("\(memory.date)")
                            Text(memory.description)  .font(.system(size: 20, weight: .regular, design: .rounded))
                                .foregroundColor(Color("Dark"))
                                .frame(width: 300, alignment: .leading).padding(.bottom, 20)
                                .multilineTextAlignment(.leading)
                        }
                    }

                    
                    HStack(spacing: 10){
                        Text("past week")
                            .font(.system(size: 18, weight: .regular, design: .rounded))
                            .foregroundColor(Color("Dark"))
                            .multilineTextAlignment(.leading)
                            .padding(5)
                            .padding(.horizontal, 8)
                            .background(Color("Peach"))
                            .clipShape(Capsule())
                        
                        Text("past month")
                            .font(.system(size: 18, weight: .regular, design: .rounded))
                            .foregroundColor(Color("Dark"))
                            .multilineTextAlignment(.leading)
                            .padding(5)
                            .padding(.horizontal, 8)
                            .background(Color("Yellow"))
                            .clipShape(Capsule())
                        Text("past year")
                            .font(.system(size: 18, weight: .regular, design: .rounded))
                            .foregroundColor(Color("Dark"))
                            .multilineTextAlignment(.leading)
                            .padding(5)
                            .padding(.horizontal, 8)
                            .background(Color("Periwinkle"))
                            .clipShape(Capsule())
                    }
                  
                    HStack(spacing: 10){
                        Text("favourites")
                            .font(.system(size: 18, weight: .regular, design: .rounded))
                            .foregroundColor(Color("Dark"))
                            .multilineTextAlignment(.leading)
                            .padding(5)
                            .padding(.horizontal, 8)
                            .background(Color("Periwinkle"))
                            .clipShape(Capsule())
                        
                        Text("earliest memories")
                            .font(.system(size: 18, weight: .regular, design: .rounded))
                            .foregroundColor(Color("Dark"))
                            .multilineTextAlignment(.leading)
                            .padding(5)
                            .padding(.horizontal, 8)
                            .background(Color("Peach"))
                            .clipShape(Capsule())
                    }.padding(.top, 5)
                    
                    
                    VStack{
         
                        LazyVGrid(columns: columns) {
                            
                            //                        ForEach(spends) {spend in
                            //                            NavigationLink(destination: Details(spend: spend)) {
                            
                            NavigationLink(destination: Memory()){
                                
                            VStack{
                                
                            
                                    VStack{
                                        Text("10/07/2022")
                                            .font(.system(size: 15, weight: .medium))
                                            .multilineTextAlignment(.leading).foregroundColor(Color.white)
                                            .padding(.top, 90)
                                            .padding(.horizontal, 15)
                                        
                                    }.padding(20).background(
                                        
                                        Rectangle()
                                            .fill(Color("Dark"))
                                            .cornerRadius(20)
                                            .shadow(
                                                color: Color.gray.opacity(0.2),
                                                radius: 20,
                                                x: 0,
                                                y: 2
                                            ).frame(height: 160)
                                    ).padding(.bottom, 5)
                                    
                                    Text("A waddle in the park")
                                        .font(.system(size: 18, weight: .medium))
                                        .multilineTextAlignment(.leading).foregroundColor(Color("Dark"))
                                        .padding(.leading, -8).frame(width: 160)
                                    
                                }.padding(.top, 0)
                                
                                
                            }//vstack
                        }

//                        }//foreach
//
                    }.padding(10).padding(.top, 20)//lazygrid
           
               
                    
                   
                   
                }//vstack1
                
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
                        }

                    }.padding(.horizontal, 30)
                }.padding(.bottom, 0).padding(.top, 750)
                
            }.background(Color("Light"))
            
         
        }.background(Color("Light")).navigationBarBackButtonHidden(true).navigationBarHidden(true)
    }
}


struct Memories_Previews: PreviewProvider {
    static var previews: some View {
        Memories()
    }
}
