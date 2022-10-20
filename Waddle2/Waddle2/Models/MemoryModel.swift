//
//  Memory.swift
//  Waddle2
//
//  Created by Isla Just's Macbook Pro on 2022/10/20.
//

import SwiftUI

struct MemoryModel: Identifiable {
    
    var id = UUID()
    var img: String
    var favourite: Bool
    var description: String
    var steps: Int
    var date: Date
}
