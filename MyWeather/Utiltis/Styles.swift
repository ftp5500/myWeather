//
//  Styles.swift
//  MyWeather
//
//  Created by Ali on 17/06/2023.
//



import SwiftUI

struct CustomSwitchToggleStyle: ToggleStyle {
    @State var isAnimating = true

    func makeBody(configuration: Configuration) -> some View {
        Button(action: { withAnimation { configuration.isOn.toggle() } }) {
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(hex: "1F1D2D"))
                .frame(width: 40, height: 18)
                .overlay(
                    Circle()
                        .fill(configuration.isOn ? AppColors.switchONColor : AppColors.switchOffColor)
                        .frame(width: 18)
                        .padding(.leading, configuration.isOn ? 20 : -20)
                )
        }
        .buttonStyle(PlainButtonStyle())
    }
}

