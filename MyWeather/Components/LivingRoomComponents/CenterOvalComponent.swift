//
//  CenterOvalComponent.swift
//  MyWeather
//
//  Created by Ali on 18/06/2023.
//

import SwiftUI

struct CenterOvalComponent: View {
    @State private var isAnimate:Bool = false
    var body: some View {
        VStack(spacing:30){
            Text("10°")
                .font(.caption2)
                .fontWeight(.medium)
                .foregroundColor(AppColors.textGrayColor)
            
            HStack(spacing:30){
                Text("-30°")
                    .font(.caption2)
                    .fontWeight(.medium)
                    .foregroundColor(AppColors.textGrayColor)
                    .padding(.leading , 15)
                
                
                
                ZStack{
                    Circle()
                        
                        .trim(from:isAnimate ? 0.1 : 0.99 , to: 1)     
                        .stroke(AppColors.progressBarColor , style: StrokeStyle(lineWidth: 15, lineCap: .round, lineJoin: .round))
                       
                        .rotationEffect(Angle(degrees: 90))
                        .rotation3DEffect(Angle(degrees: 180), axis: (x: 1, y: 0, z: 0))
                        .frame(maxWidth: 290 , maxHeight: 290)
                        .animation(Animation.easeOut, value: isAnimate)
                        
                    
                    Circle()
                        .fill(Color(hex: "2E2E3B"))
                        .frame(maxWidth: 280 , maxHeight: 280)
                    Circle()
                        .fill(AppColors.ovalColor)
                        .frame(maxWidth: 193 , maxHeight: 193)
                        .shadow(color: .black.opacity(0.3) ,radius: 10 , x: 0 , y: 18)
                        .shadow(color: .black.opacity(0.1) ,radius: 10 , x: -1 , y: -18)
                        .overlay(
                            Circle()
                                .stroke(.black.opacity(0.1) , lineWidth: 1)
                                .frame(maxWidth: 193 , maxHeight: 193)
                                .shadow(color: .black.opacity(0.5) ,radius: 10 , x: 0 , y: 18)
                                .shadow(color: .white.opacity(0.1) ,radius: 10 , x: -1 , y: -18)
                        )
                    
                    VStack(spacing: 20) {
                        Text("29°")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                        
                        Text("Room\nTemperature")
                            .font(.callout) 
                            .fontWeight(.medium)
                            .foregroundColor(AppColors.textGrayColor)
                            .multilineTextAlignment(.center)
                    }
                        
                    
                    
                }
                .onTapGesture {
                    self.isAnimate.toggle()
                }
                
                Text("30°")
                    .font(.caption2)
                    .fontWeight(.medium)
                    .foregroundColor(AppColors.textGrayColor)
                    .padding(.trailing , 15)
            }
            
        }
        .padding()
    }
}

struct CenterOvalComponent_Previews: PreviewProvider {
    static var previews: some View {
        CenterOvalComponent()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
