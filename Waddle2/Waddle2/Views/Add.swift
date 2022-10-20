//
//  Add.swift
//  Waddle2
//
//  Created by Isla Just's Macbook Pro on 2022/10/13.
//

import SwiftUI

struct Add: View {
    
    @State var shouldShowImagePicker = false
    @State var image: UIImage?
    
    @State var name: String = ""
    
    @StateObject var firestore = FirestoreManager()
    
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
                    Text("Let’s document a memory")
                        .font(.system(size: 25, weight: .medium, design: .rounded))
                        .foregroundColor(Color("Dark"))
                        .frame(width: 300, alignment: .leading).padding(.bottom, 0)
                        .multilineTextAlignment(.leading).padding(.top, 80)
                    
                    Text("Give it a name")
                        .font(.system(size: 20, weight: .regular, design: .rounded))
                        .foregroundColor(Color("Dark"))
                        .frame(width: 300, alignment: .leading).padding(.bottom, 40)
                        .multilineTextAlignment(.leading)
                    
                    Button {
                          shouldShowImagePicker.toggle()
                                          } label: {
                                              VStack {
                                                  if let image = self.image {
                                                      Image(uiImage: image)
                                                          .resizable()
                                                          .aspectRatio( contentMode: .fill)
                                                      .cornerRadius(20)
                                                      .frame(width:340, height:338).clipShape(RoundedRectangle(
                                                        cornerRadius: 20
                                                      ))
                                                      
//                                                      ZStack{
//
//                                                          HStack{
//                                                              Text("21 August 2021")
//                                                                  .font(.system(size: 20, weight: .regular, design: .rounded))
//                                                                  .foregroundColor(Color.white)
//                                                                  .frame(alignment: .leading)
//                                                                  .multilineTextAlignment(.leading).padding(.leading, 10)
//                                                              Spacer()
//
//                                                              Image(systemName: "star.fill")
//                                                                                          .resizable()
//                                                                                          .foregroundColor(.white)
//                                                                                          .aspectRatio(contentMode: .fit)
//                                                                                          .frame(width:30, alignment: .trailing).padding(.trailing, 10)
//
//                                                          }
//
//                                                      }.padding().frame(width:340, height:300).padding(.top, -200)
                                                      
                                                  } else {
                                                      VStack{
                                                          
                                                          Text("Tap to select a photo")    .font(.system(size: 20, weight: .regular, design: .rounded))
                                                     .foregroundColor(Color.white)
                                              
                                                          
                                                      }.background(
                                                        
                                                        Rectangle()
                                                        .fill(Color("Dark"))
                                                        .cornerRadius(20)
                                                        .shadow(
                                                            color: Color.gray.opacity(0.2),
                                                            radius: 20,
                                                            x: 0,
                                                            y: 2
                                                        ).frame(width:340, height:338).padding(.top,280)   .shadow(
                                                            color: Color.gray.opacity(0.2),
                                                            radius: 20,
                                                            x: 0,
                                                            y: 2
                                                        )
                                                        )
                                                  }
                                              }
                                     
                                          }
                    
                    

                    
                    
                    
                    ZStack{
                     
                    }.frame(width: .infinity, height: 60) .padding(.horizontal, 43).padding(.top, 20)

                        ZStack{
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .fill(Color("Dark2").opacity(0))
                                .frame(width: .infinity, height: 60)
                                .padding(.horizontal, 43).padding(.top, 20)
                            
                           
                        }.padding(.top, -10)
                }
                
                ZStack{
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .fill(Color("Periwinkle").opacity(1))
                                .frame(width: .infinity, height: 60)
                                .padding(.horizontal, 43).padding(.top, 20)

                            TextField("memory name", text: $name)
                                .background(Color.red.opacity(0))
                                .cornerRadius(5)
                                .padding(.horizontal, 50).padding(.top, 20) .accentColor(Color("Dark"))
                                .font(.system(size: 18, weight: .regular)).foregroundColor(Color("Dark"))
                        }
                        
                        Button(action: {
                            print("Save")
                            
                            firestore.addMemory(image: "", description:name, steps: 1)
                        }, label: {
                            Text("Save")
                        })
                        
                        NavigationLink(destination: Memory()){
                            
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 25, style: .continuous)
                                    .fill(Color("Dark2"))
                                    .frame(width: .infinity, height: 60)
                                    .padding(.horizontal, 43).padding(.top, 20)
                                
                                Text("Save")
                                    .font(.system(size: 18, weight: .semibold))
                                    .multilineTextAlignment(.center).foregroundColor(.white)
                                    .padding(.horizontal, 0).padding(.top, 20)
                            }.padding(.top, -10)
                        }
                    }
                }.padding(.top, 340)
             
                
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

                        NavigationLink(destination: Memories()){
                        VStack{
                            Text("memories")
                             
                                .font(.system(size: 20, weight: .regular))
                                .multilineTextAlignment(.center).foregroundColor(.white)
                        }.padding(.top, -20).padding()
                        }

                      
                            VStack{
                                Text("add")
                                    .underline(color: Color("Dark2"))
                                    .font(.system(size: 20, weight: .semibold))
                                    .multilineTextAlignment(.center).foregroundColor(.white)
                            }.padding(.top, -20).padding()
                  
            
                    }.padding(.horizontal, 30)
                }.padding(.bottom, 0).padding(.top, 750)
                
            }.background(Color("Light"))
            
         
        }.background(Color("Light")).navigationBarBackButtonHidden(true).navigationBarHidden(true)  .fullScreenCover(isPresented: $shouldShowImagePicker, onDismiss: nil) {
            ImagePicker(image: $image)
            .ignoresSafeArea()}
        
    }
}

struct Add_Previews: PreviewProvider {
    static var previews: some View {
        Add()
    }
}
