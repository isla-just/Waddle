//
//  AuthManager.swift
//  Waddle2
//
//  Created by Isla Just's Macbook Pro on 2022/10/20.
//

import SwiftUI

import FirebaseCore
import FirebaseAuth

class AuthManager{
    
    private var auth = Auth.auth()
    
    func registerUser(email: String, password: String){
        auth.createUser(withEmail: email, password: password){authResult, error in
          
            if(authResult != nil){
                print(authResult?.user.email)
            }
            
            if(error != nil){
                print(error.debugDescription)
            }
        }
    }
    
    func loginUser(email: String, password: String){
        auth.signIn(withEmail: email, password: password){[weak self] authResult, error in
            guard let strongSelf = self else {return}
            
            if(authResult != nil){
                print(authResult?.user.email)
            }
            if(error != nil){
                print(error.debugDescription)
            }
        }
    }
}
