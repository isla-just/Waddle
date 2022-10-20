//
//  FirestoreManager.swift
//  Waddle2
//
//  Created by Isla Just's Macbook Pro on 2022/10/20.
//

import SwiftUI
import Firebase

class FirestoreManager: ObservableObject {
   
    @Published var memories: [MemoryModel] = []
    
    func Init(){
        fetchAllMemories()
    }
    
    func fetchAllMemories(){
        
        let db = Firestore.firestore()
        
        var collData: [MemoryModel] = []
        
        db.collection("memories").getDocuments() { (querySnapshot, err) in
                if let err = err {
                    print("Error getting documents: \(err)")
                } else {
                    for document in querySnapshot!.documents {
                        let data = document.data()
                        
                        print("this is your fetched data \(document.documentID) => \(document.data())")

                        let a: MemoryModel = MemoryModel(img: data["image"] as? String ?? "", favourite: data["favourite"] as? Bool ?? true, description: data["description"] as? String ?? "", steps: data["steps"] as? Int ?? 0, date: data["date"] as? Date ?? Date.now)
                     
                            collData.append(a)
                    }
                }
            
            
        }
        self.memories = collData
        
    }
    
    func addMemory(image: String, description:String, steps: Int) {
        let db = Firestore.firestore()
        
        let docData: [String: Any] = [
            "date": Date.now,
            "description": description,
            "favourite":false,
            "image": image,
            "steps": steps
        ]
        
        let collRef = db.collection("memories")
    
        var ref: DocumentReference? = nil
        ref = collRef.addDocument(data: docData){ err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(ref!.documentID)")
            }
        }
    }
    
    
}


