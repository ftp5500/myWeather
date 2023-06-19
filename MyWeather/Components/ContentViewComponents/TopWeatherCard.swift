//
//  TopWeatherCard.swift
//  MyWeather
//
//  Created by Ali on 16/06/2023.
//

import SwiftUI

struct TopWeatherCard: View {
    var body: some View {
        ZStack{
            //Top Weather Card
            AppColors.cardBackground
            VStack {
                HStack{
                    Image("CloudyIcon")
                    Spacer()
                    VStack{
                        //Cloudy
                        Text("Cloudy")
                            .foregroundColor(.white)
                            .font(.system(size: 20 , weight: .semibold))
                            .padding(.trailing ,95)
                        Text("Jeddah, Saudi Arabia")
                            .foregroundColor(AppColors.textGrayColor)
                            .font(.callout)
                            .fontWeight(.semibold)
                            
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 15)
                    Spacer()
                 
                    Text("28°")
                        .font(.title)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                .padding(.bottom,20)
                
    
                
                HStack(alignment: .center, spacing: 50){
                    Text("31°C")
                    Text("65%")
                    Text("3")
                    Text("1009hPa")
                }
                
                .foregroundColor(.white)
                .fontWeight(.semibold)
                
                HStack(spacing:20){
                    Text("Sensible")
                    Text("Humidity")
                    Text("W.Force")
                    Text("Pressure")
                }
                .foregroundColor(AppColors.textGrayColor)
                .fontWeight(.semibold)
                .padding(.top ,1)
            }
            
            .fixedSize(horizontal: true, vertical: false)
         
            
        }
        .frame(width: 366, height: 173)
        .cornerRadius(15)
    }
}

struct TopWeatherCard_Previews: PreviewProvider {
    static var previews: some View {
        TopWeatherCard()
            .previewLayout(.sizeThatFits)
            .padding()
            .preferredColorScheme(.dark)
    }
}
