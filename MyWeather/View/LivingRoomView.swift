//
//  LivingRoomView.swift
//  MyWeather
//
//  Created by Ali on 18/06/2023.
//

import SwiftUI

struct LivingRoomView: View {
    var body: some View {
        NavigationView {
            ZStack{ 
                Color(hex:"252531")
                    .ignoresSafeArea()
                VStack{
                
                        LivingRoomHeader()
                            .padding(.top , 35)
                            .padding(.horizontal , 30)
                    
                 
                    CenterOvalComponent()
                    Spacer()
                    
                }
                UnionShapeComponent()
                    .padding(.top , 400)
     
            }
            
        }
        .navigationBarBackButtonHidden(true) 
    }
}

struct LivingRoomView_Previews: PreviewProvider {
    static var previews: some View {
        LivingRoomView()
    }
}
