//
//  Memories.swift
//  Waddle2
//
//  Created by Isla Just's Macbook Pro on 2022/10/13.
//

import SwiftUI
import SDWebImageSwiftUI

struct Memories: View {
    
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/YY"
        return formatter
    }()
    
    @StateObject private var firestoreData = FirestoreManager()
    
    
    let columns = [GridItem(.flexible(maximum: 190)),
                   GridItem(.fixed(150))]
    
    @State var isSearchText: String = ""
    
    var body: some View {
        NavigationView(){
            ZStack(){
                
                
          
                ScrollView(.vertical){
                    Text("Your memory journal")
                        .font(.system(size: 28, weight: .medium, design: .rounded))
                        .foregroundColor(Color("Dark"))
                        .frame(width: .infinity, alignment: .leading).padding(.bottom, 0)
                        .multilineTextAlignment(.center).padding(.top, 80)
                    
                    Text("Documenting life’s small moments")
                        .font(.system(size: 20, weight: .regular, design: .rounded))
                        .foregroundColor(Color("Dark"))
                        .frame(width: .infinity, alignment: .leading).padding(.bottom, 20)
                        .multilineTextAlignment(.center)
                
                    ZStack{
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .fill(Color("Periwinkle"))
                            .frame(width: .infinity, height: 70)
                            .padding(.horizontal, 35).padding(.top, 20)


                        HStack{
                            
                            Image(systemName: "magnifyingglass") .symbolRenderingMode(.multicolor)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20, alignment: .center)
                                .padding(.leading, 60).padding(.top, 20) .foregroundColor(Color("Dark"))
                            
                            
                            TextField("Search memories", text: $isSearchText)
                                .background(Color.red.opacity(0))
                                .cornerRadius(5)
                                .padding(.horizontal, 10).padding(.top, 20) .accentColor(Color("Dark2"))
                                .font(.system(size: 18, weight: .regular)).foregroundColor(Color("Dark"))
                        }
                        
                      
                    }.padding(.top, 20)
                    
//                    HStack(spacing: 10){
//                        Text("past week")
//                            .font(.system(size: 18, weight: .regular, design: .rounded))
//                            .foregroundColor(Color("Dark"))
//                            .multilineTextAlignment(.leading)
//                            .padding(5)
//                            .padding(.horizontal, 8)
//                            .background(Color("Peach"))
//                            .clipShape(Capsule())
//
//                        Text("past month")
//                            .font(.system(size: 18, weight: .regular, design: .rounded))
//                            .foregroundColor(Color("Dark"))
//                            .multilineTextAlignment(.leading)
//                            .padding(5)
//                            .padding(.horizontal, 8)
//                            .background(Color("Yellow"))
//                            .clipShape(Capsule())
//                        Text("past year")
//                            .font(.system(size: 18, weight: .regular, design: .rounded))
//                            .foregroundColor(Color("Dark"))
//                            .multilineTextAlignment(.leading)
//                            .padding(5)
//                            .padding(.horizontal, 8)
//                            .background(Color("Periwinkle"))
//                            .clipShape(Capsule())
//                    }
                  
                
   
         LazyVGrid(columns: columns) {
                        
          ForEach(firestoreData.memories){memory in
//                                                                                NavigationLink(destination: Memory(memory: memory)) {
//
                
              NavigationLink(destination: Memory(memory: memory)){
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
              }
       
                        
                                                }//foreach
                        //
                                                }.padding(.leading, -20).padding(.top, 20)//lazygrid
                    }.padding(.bottom, 80)

                
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
                }.padding(.bottom, 0).padding(.top, 730)
                
            }.background(Color("Light"))
            
         
        }.background(Color("Light")).navigationBarBackButtonHidden(true).navigationBarHidden(true)
            .onChange(of: isSearchText){ _ in
                if(!isSearchText.isEmpty){
                    self.firestoreData.memories = firestoreData.memories.filter{ $0.description.contains(isSearchText)}
                }else{
                    self.firestoreData.memories=firestoreData.memories
                }
           }
    }
    
    func searchData()->[MemoryModel]{
        
      return firestoreData.memories.filter{ $0.description.contains(isSearchText)}
    }
}


struct Memories_Previews: PreviewProvider {
    static var previews: some View {
        Memories()
    }
}
