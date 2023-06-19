//
//  LivingRoomHeader.swift
//  MyWeather
//
//  Created by Ali on 18/06/2023.
//

//
//  HeaderComponent.swift
//  MyWeather
//
//  Created by Ali on 18/06/2023.
//

import SwiftUI

struct LivingRoomHeader: View {
    var body: some View {
        VStack {
            HStack{
            
                NavigationLink(destination:ContentView()) {
                    Image(systemName: "chevron.left")
                            .resizable()
                            .frame(width: 10 , height: 25)
                        .foregroundColor(AppColors.textGrayColor)
                }
                
               
                Spacer()
                Text("Living Room")
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                Button(action:{
                    
                }, label: {
                    Text(":")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(AppColors.textGrayColor)
                })
               
            }
            .padding(.horizontal , 20) 
     
            
            Text("Air Conditioner")
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }
    }
}

struct LivingRoomHeader_Previews: PreviewProvider {
    static var previews: some View {
        LivingRoomHeader()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
