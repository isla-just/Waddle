//
//  BioAuthView.swift
//  Waddle2
//
//  Created by Isla Just's Macbook Pro on 2022/10/20.
//

import SwiftUI
import LocalAuthentication // bio

struct BioAuthView: View {
    @State var isUnlocked = false
    
    var body: some View {
        NavigationView(){
            ZStack(){

                VStack(){
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                        .padding(.bottom, 5)
                    
                    Circle()
                        .fill(Color("Periwinkle"))
                        .frame(width: 222, height: 222)
                        .padding(.bottom, 5)
                    
                    Text(isUnlocked ? "Need authentication" : "Is logged in")
                    
                    Text("We are keeping your memories safe!")
                        .font(.system(size: 30, weight: .medium, design: .rounded))
                        .foregroundColor(Color("Dark"))
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(width: .infinity, alignment: .leading).padding([.leading, .trailing], 13.0).padding(.top, 50)
                        .multilineTextAlignment(.center)
                    
                    Text("Authenticate yourself with face id or touch id to access memories")
                        .font(.system(size: 20, weight: .regular, design: .rounded))
                        .foregroundColor(Color("Dark"))
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(width: .infinity, alignment: .center).padding([.leading, .trailing], 20.0).padding(.top, 1)
                        .multilineTextAlignment(.center)
                    
                    NavigationLink(destination: Dashboard()){
                      
                    ZStack{
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .fill(Color("Dark2"))
                            .frame(width: .infinity, height: 60)
                            .padding(.horizontal, 40).padding(.top, 20)

                        Button(action:{
                            print("scan face")
                            authenticate()
                        }, label:{
                            Text("authenticate")
                                .font(.system(size: 18, weight: .semibold))
                                .multilineTextAlignment(.center).foregroundColor(.white)
                                .padding(.horizontal, 50).padding(.top, 20)
                        })
                        
                    }
                    }.navigationBarBackButtonHidden(true).navigationBarHidden(true)
                    
                    HStack(alignment: .center){
                        Text("take me to login")
                            .font(.system(size: 18, weight: .medium))
                            .multilineTextAlignment(.center).foregroundColor(Color("Dark2")).underline()
                    }
                    
                    Spacer()
                      
                }

            }.background(Color("Light"))
            
         
        }.background(Color("Light")).navigationBarBackButtonHidden(true).navigationBarHidden(true)
    }
    
    func authenticate(){
        let context = LAContext()
        var error: NSError?
        
        if context.canEvaluatePolicy(.deviceOwnerAuthentication, error: &error){
            
            let reason = "we need to keep your memories safe"
            
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason){
                success, authenticationError in
                if success{
                   isUnlocked=true
                }else{
                    isUnlocked=false
                }
            }
        }else{
                    print("no biometrics");
                }
        }
}

struct BioAuthView_Previews: PreviewProvider {
    static var previews: some View {
        BioAuthView()
    }
}
