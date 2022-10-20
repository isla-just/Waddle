//
//  FirestoreManager.swift
//  Waddle
//
//  Created by Isla Just's Macbook Pro on 2022/10/13.
//


import SwiftUI
import Firebase
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

class FirestoreManager: ObservableObject{
    
//    @Published var pins: [Pin] = []
//
//    func Init(){
//        FirebaseApp.configure()
////        fetchAllPins()
//    }
//
//    func fetchAllPins(){
//        let db = Firestore.firestore()
//
//        //temp data
//        var collData: [Pin] = []
//
//        db.collection("memories").getDocuments{(querySnapshot, error) in
//
//            if let error = error{
//                print("error\(error)")
//            }else{
//                for document in querySnapshot!.documents{
//                    let data = document.data()
//
//                    print("\(document.documentID):\(document.data())")
//
//                    //temp variable to append
//                        let a: Pin =
//                        Pin(label:data["title"] as? String ?? "", altitude: 0, pressure: 0, location: data["location"] as? String ?? "", date: Date.now)
//
//                    collData.append(a)
//                }
//            }
//
//
//            }
//        self.pins = collData
//        }
//
//    func addPin(pin: Pin){
//        let db = Firestore.firestore()
//
//    }
    }


