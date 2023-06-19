//
//  HeaderCompnent.swift
//  MyWeather
//
//  Created by Ali on 16/06/2023.
//

import SwiftUI

struct HeaderCompnent: View {
    var body: some View {
        VStack(spacing:10){
            HStack{
                Text("Hey,")
                    .foregroundColor(.gray)
                    .fontWeight(.semibold)
                
                Text("Ali")
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .bold))
                
                Spacer()
                
                NavigationLink(destination: LivingRoomView()) { 
                    Image(systemName:"square.grid.2x2.fill")
                        .foregroundColor(.white)
                }
                
            }
            
            HStack{
                Text("Today Dec 29,2022")
                    .foregroundColor(AppColors.textGrayColor)
                    .fontWeight(.bold)
                    .frame(width:.infinity)
                    Spacer()
            }

        }
        .padding(.horizontal , 20)
        
    }
}

struct HeaderCompnent_Previews: PreviewProvider {
    static var previews: some View {
        HeaderCompnent()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
