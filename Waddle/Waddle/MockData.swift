//
//  Mockdata.swift
//  Waddle2
//
//  Created by Isla Just's Macbook Pro on 2022/10/05.
//


import UIKit
import SwiftUI

struct PageData {
    let header: String
    let content: String
    let imageName: String
    let color: Color
    let textColor: Color
    
}

struct MockData {
    static let pages: [PageData] = [
        PageData(
            header: "Time flies...",
            content: "use Waddle to document the special moments",
            imageName: "onboard1",
            color: Color(hex: "FFF8EE"),
            textColor: Color(hex: "2F2777")),
        PageData(
            header: "Join the family",
            content: "keep track of every step your child takes with Waddle",
            imageName: "onboard2",
            color: Color(hex: "5F5AA9"),
            textColor: Color(hex: "FFF8EE")),
        PageData(
            header: "Document life",
            content: "journal your child’s growth from a waddle to a stride",
            imageName: "onboard3",
            color: Color(hex: "D7DFF2"),
            textColor: Color(hex: "2F2777")),
    ]
}

/// Color converter from hex string to SwiftUI's Color
extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        
        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff
        
        self.init(red: Double(r) / 0xff, green: Double(g) / 0xff, blue: Double(b) / 0xff)
    }
}

