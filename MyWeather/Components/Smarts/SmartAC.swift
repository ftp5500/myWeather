//
//  SmartAC.swift
//  MyWeather
//
//  Created by Ali on 17/06/2023.
//

import SwiftUI
struct SmartAC: View {
    @State private var isToggleOn = true
    @State  var rotaion:CGFloat
    @State var icon:String
    @State  var title:String
    
    var body: some View {
        ZStack{
            VStack {
                Parallelogram()
                    .fill(isToggleOn ? AppColors.parallelogramDark : AppColors.parallelogramLight)
                    .frame(maxWidth:165 , maxHeight: 174)
                    .rotation3DEffect(.degrees(rotaion), axis: (x: 0, y: -1, z: 0))
                    .overlay(
                        VStack(spacing:10){
                            Image(systemName: icon)
                                .resizable()
                                .foregroundColor(isToggleOn ? .white : AppColors.textGrayColor)
                                .frame(width:30 , height: 30)
                                .fixedSize()
                                .padding(.trailing,100)
                            HStack{
                                Text(title)
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(isToggleOn ? .white : AppColors.textGrayColor)
                                    .fixedSize()
                                    .multilineTextAlignment(.leading)
                                Spacer()
                            }
                            
                            Spacer()
                            
                            HStack{
                                Text(isToggleOn ? "On" : "Off")
                                    .font(.headline)
                                    .foregroundColor(isToggleOn ? .white : AppColors.textGrayColor)
                                    .fontWeight(.semibold)
                                
                                Spacer()
                                Toggle(isOn: $isToggleOn) {
                                    
                                }
                                .toggleStyle(CustomSwitchToggleStyle())
                            }
                            .padding(.horizontal , 1)
                            .padding(.bottom , 15)
                            
                        }
                            .padding()
                )
            }
            
            
        }
    }
}

struct SmartAC_Previews: PreviewProvider {
    static var previews: some View {
        SmartAC(rotaion: 180 , icon:"air.conditioner.horizontal", title: "Air Conditional")
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
