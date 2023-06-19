//
//  NavabrUnderCard.swift
//  MyWeather
//
//  Created by Ali on 17/06/2023.
//

import SwiftUI

struct NavabrUnderCard: View {
     let labels:[String] = ["Living Room","Bedroom","Bathroom","Kitchen"]
    var body: some View {
        HStack{
            ForEach(labels , id: \.self) { label in
                Text(label)
                    .fontWeight(.semibold)
                    .foregroundColor(label == labels.first ? .white : AppColors.textGrayColor)
                    .padding(.horizontal,5)
            }
        }
        .fixedSize(horizontal: true, vertical: false)
      
    }
}

struct NavabrUnderCard_Previews: PreviewProvider {
    static var previews: some View {
        NavabrUnderCard()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
            .padding()
    }
}
