//
//  AboutSectionView.swift
//  Power_HRG_Project
//
//  Created by Stef Castillo on 9/27/23.
//

import SwiftUI

struct AboutSectionView: View {
    let title: String
    let description: String
    
    var body: some View {
        //MARK: About Section
        VStack(alignment: .leading, spacing: 8){
            
            Text("**\(title)**")
                .font(
                    .custom("ProximaNova-Regular", size: 16)
                    .weight(.bold)
                )
                .foregroundColor(Color(red: 0.14, green: 0.17, blue: 0.26))
                .frame(width: 46, alignment: .leading)
                .padding(.bottom, 5)
            
            Text("\(description)")
                .font(.custom("ProximaNova-Regular", size: 16))
                .foregroundColor(Color(red: 0.41, green: 0.47, blue: 0.53))
                .frame(width: 324, alignment: .topLeading)
                .lineSpacing(7)
                .padding(.bottom)
        }
    }
}

//#Preview {
//    AboutSectionView()
//}
