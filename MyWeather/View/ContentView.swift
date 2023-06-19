//
//  ContentView.swift
//  MyWeather
//
//  Created by Ali on 16/06/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack{
                AppColors.backgroundApp
                    .ignoresSafeArea()
                VStack(spacing:20){
                    HeaderCompnent()
                    TopWeatherCard()
                    NavabrUnderCard()
                        .padding()
                    HStack{
                        SmartAC(rotaion: 0,icon: "air.conditioner.horizontal", title:"Air Conditional")
                        SmartAC(rotaion: 180 , icon: "lightbulb.circle", title: "Lamp")
                    }
                    HStack{
                        SmartAC(rotaion: 180,icon: "tv", title:"Smart Tv")
                        SmartAC(rotaion: 0 , icon: "wifi.router", title: "Router")
                    }
                    
                }
            }
          
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
