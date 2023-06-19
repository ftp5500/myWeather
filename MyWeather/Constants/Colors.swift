//
//  Colors.swift
//  MyWeather
//
//  Created by Ali on 16/06/2023.
//

import SwiftUI
struct AppColors {
    static let backgroundApp = Color(hex: "2E2E3D")
    static let textGrayColor = Color(hex: "939393")
    static let cardBackground = LinearGradient(colors: [Color(hex:"37384A"),Color(hex:"494A5F")], startPoint: .bottom, endPoint: .top)
    
    static let parallelogramDark = LinearGradient(colors: [Color(hex:"2C2C3D"),Color(hex:"232330")], startPoint: .top, endPoint: .bottom)
    static let parallelogramLight = LinearGradient(colors: [Color(hex:"373749"),Color(hex:"4D4E62")], startPoint: .bottomLeading, endPoint: .topTrailing)
    static let switchONColor = LinearGradient(colors: [Color(hex:"DE8F8C"),Color(hex:"E7C7B2")], startPoint: .bottom, endPoint: .top)
    static let switchOffColor = LinearGradient(colors: [Color(hex:"8377E8"),Color(hex:"B7A5E3")], startPoint: .bottomTrailing, endPoint: .topLeading)
    static let ovalColor = LinearGradient(colors: [Color(hex:"313243"),Color(hex:"424357")], startPoint: .bottom, endPoint: .top)
    static let progressBarColor = LinearGradient(colors: [.blue,.purple, ], startPoint: .bottom, endPoint: .top)
    static let unionShapeColor = LinearGradient(colors: [Color(hex:"292938"),Color(hex: "292938"), Color(hex:"3C3C56")], startPoint: .bottom, endPoint: .top)
}
