//
//  FirestoreManager.swift
//  Waddle2
//
//  Created by Isla Just's Macbook Pro on 2022/10/20.
//

import SwiftUI
import Firebase
import FirebaseStorage

class FirestoreManager: ObservableObject {
   
    //all memory data
    @Published var memories = [MemoryModel]()
    
    init(){
        fetchAllMemories()
    }
    
    func fetchAllMemories(){
//        self.memories.removeAll()
        
        let db = Firestore.firestore()
        
        db.collection("memories").getDocuments {snapshot, error in
            
            //if there are errors stop
            guard error == nil else{
                print(error!.localizedDescription)
                return
            }
            
            if let snapshot = snapshot{
                for document in snapshot.documents{
                    let data = document.data()
                    
//                    print("\(document.documentID) => \(document.data())")
                    
//                    self.memories.append(MemoryModel(img:"", favourite: true, description: "hello world", steps: 100, date: Date.now))
                                        self.memories.append(MemoryModel(img: data["image"] as? String ?? "", favourite: data["favourite"] as? Bool ?? false, description: data["description"] as? String ?? "", steps: data["steps"] as? Int ?? 0, date: data["date"] as? Date ?? Date.now))
                    
                }
                  
                    
                    print(self.memories)
                    }
                }
            
            
        }
        
    
    func addMemory(image: UIImage, description:String, steps: Int) {
        let db = Firestore.firestore()
        
        //referencing the database
        let storageRef = Storage.storage().reference()
        let uid = UUID().uuidString
        //save it to the firebase
        let path = "images\(uid).jpg"
        let data = image.jpegData(compressionQuality: 0.7)
        
        let imageRef = storageRef.child(path)
        
        let metaData = StorageMetadata()
        metaData.contentType = "image/jpeg"
        
        _ = imageRef.putData(data!, metadata: metaData){(metadata, error) in
            guard let metadata = metadata else{
                print(error?.localizedDescription ?? "error")
                return
            }
            _ = metadata.size
            
            imageRef.downloadURL{(url, error) in
                guard url != nil else{
                    print(error?.localizedDescription ?? "error")
                    return
                }
                print (url ?? "url")
                
                let docData: [String: Any] = [
                    "date": Date.now,
                    "description": description,
                    "favourite":false,
                    "image": url?.absoluteString as Any,
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
        
        //upload file
        
     
    }
    
    
}


