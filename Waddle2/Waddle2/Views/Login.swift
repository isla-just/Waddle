//
//  Login.swift
//  Waddle2
//
//  Created by Isla Just's Macbook Pro on 2022/10/06.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct Login: View {
    
    var authManager = AuthManager()
    
    @State var email: String = ""
    @State var password: String = ""
    
    @State var userIsLoggedIn: Bool = false
    
    var body: some View {
        
        if userIsLoggedIn{
            Dashboard()
        }else{
            content
        }
    }
    
    var content:some View{
        
        NavigationView(){
            ZStack(){
                Image("background1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 390, height: 842).ignoresSafeArea()
                
                VStack(){
                    Text("Login")
                        .font(.system(size: 30, weight: .medium, design: .rounded))
                        .foregroundColor(Color("Dark"))
                        .frame(width: 300, alignment: .leading).padding(.bottom, 5)
                        .multilineTextAlignment(.leading)
                    
                    Text("welcome back to Waddle!")
                        .font(.system(size: 20, weight: .regular, design: .rounded))
                        .foregroundColor(Color("Dark"))
                        .frame(width: 300, alignment: .leading).padding(.bottom, 20)
                        .multilineTextAlignment(.leading)
                    
                    HStack {
                            VStack {
                                 TextField("email", text: $email)
                                      .padding(.leading, 16)
                                      .padding(.trailing, 16)
                                      .foregroundColor(Color("Dark2"))
                                 Rectangle()
                                      .frame(height: 1)
                                      .foregroundColor(Color("Dark"))
                                      .padding(.leading, 16)
                                      .padding(.trailing, 16)
                            }
                    }.frame(width: 330, alignment: .leading).padding(.top, 10)
                    
                    HStack {
                            VStack {
                                 SecureField("password", text: $password)
                                      .padding(.leading, 16)
                                      .padding(.trailing, 16)
                                      .foregroundColor(Color("Dark2"))
                                 Rectangle()
                                      .frame(height: 1)
                                      .foregroundColor(Color("Dark"))
                                      .padding(.leading, 16)
                                      .padding(.trailing, 16)
                            }
                    }.frame(width: 330, alignment: .leading).padding(.top, 10)
                    
                    Text("Oops I forgot")
                        .font(.system(size: 15, weight: .regular, design: .rounded))
                        .foregroundColor(Color("Dark"))
                        .frame(width: 300, alignment: .trailing)
                        .multilineTextAlignment(.trailing).underline().padding(.top, 10)
                    
                    
                    
                    NavigationLink(destination: Dashboard()){
                      
                    
                        
                    ZStack{
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .fill(Color("Dark2"))
                            .frame(width: .infinity, height: 60)
                            .padding(.horizontal, 40).padding(.top, 20)

                        Button(action:{
                            print("login")
                            authManager.loginUser(email: email, password: password)
                        }){
                            Text("login user")  .font(.system(size: 18, weight: .semibold))
                                .multilineTextAlignment(.center).foregroundColor(.white)
                                .padding(.horizontal, 50).padding(.top, 20)
                        }
                        
                   
                    }
                    }.navigationBarBackButtonHidden(true).navigationBarHidden(true)
                        
                    HStack(alignment: .center){
                        Text("Don't have an account yet?")
                            .font(.system(size: 15, weight: .medium))
                            .multilineTextAlignment(.center).foregroundColor(Color("Dark2"))
                        
                        NavigationLink(destination: Signup()){
                        Text("Sign up")
                            .font(.system(size: 15, weight: .semibold))
                            .multilineTextAlignment(.center).foregroundColor(Color("Dark"))
                        }.navigationBarBackButtonHidden(true)
                    }
                    .padding(.top)
                }
                
            }
            
         
        }.background(Color("Light")).navigationBarBackButtonHidden(true).navigationBarHidden(true)
            .onAppear{
                Auth.auth().addStateDidChangeListener{auth, user in
                    if user != nil{
                        withAnimation{
                            userIsLoggedIn.toggle()
                        }
                    }
                }
            }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
