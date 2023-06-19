//
//  UnionShapeComponent.swift
//  MyWeather
//
//  Created by Ali on 18/06/2023.
//

import SwiftUI

struct UnionShapeComponent: View {
    var body: some View {
        ZStack{
            
            UnionShape()
                .fill(AppColors.unionShapeColor)
                .frame(width:430 , height: 446)
            ZStack{
                Circle()
                    .fill(Color(hex: "2E2E3B"))
                    .frame(maxWidth: 110 , maxHeight: 110)
                Circle()
                    .fill(AppColors.ovalColor)
                    .frame(maxWidth: 76 , maxHeight: 76)
                    .shadow(color: .black.opacity(0.3) ,radius: 10 , x: 0 , y: 18)
                    .shadow(color: .black.opacity(0.1) ,radius: 10 , x: -1 , y: -18)
                    .overlay(
                        Circle()
                            .stroke(.black.opacity(0.1) , lineWidth: 1)
                            .frame(maxWidth: 193 , maxHeight: 193)
                            .shadow(color: .black.opacity(0.5) ,radius: 10 , x: 0 , y: 18)
                            .shadow(color: .white.opacity(0.1) ,radius: 10 , x: -1 , y: -18)
                    )
                    .overlay{
                        Image(systemName: "power")
                            .foregroundColor(.gray)
                    }
            }
            .padding(.top , 200)
            
            HStack{
                VStack {
                    Text("120m")
                        .font(.title2)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                    
                    Text("First Floor")
                        .font(.callout)
                        .foregroundColor(.gray)
                        .fontWeight(.medium)
                    
                }
                Spacer()
                VStack {
                    Text("90m")
                        .font(.title2)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                    Text("Time")
                        .font(.callout)
                        .foregroundColor(.gray)
                        .fontWeight(.medium)
                }
            }
            
            .padding(.horizontal , 40)
            
        }
    }
}

struct UnionShapeComponent_Previews: PreviewProvider {
    static var previews: some View {
        UnionShapeComponent()
            .previewLayout(.sizeThatFits)
        
        
        
    }
}
