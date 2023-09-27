//
//  CompanyHeaderView.swift
//  Power_HRG_Project
//
//  Created by Stef Castillo on 9/27/23.
//

import SwiftUI

struct CompanyHeaderView: View {
    let companyName: String
    let logoImage: String
    let industryName: String
    let followers: String
    let employees: String
    @Binding var isFollowing: Bool
    
    var body: some View {
        //MARK: Power HRG Section
        VStack(alignment: .leading, spacing: 16) {
            HStack(alignment: .top, spacing: 20) {
                Image("\(logoImage)")
                    .resizable()
                    .frame(width: 79, height: 96)
                
                HStack(alignment: .firstTextBaseline, spacing: 5) {
                    VStack(alignment: .leading, spacing: 5){
                        HStack {
                            Text("\(companyName)")
                                .font(.custom("ProximaNova-Regular", size: 22)
                                    .weight(.bold))
                            HStack(alignment: .top, spacing: 0) {
                                Text("COMPANY")
                                    .foregroundColor(Color(red: 0.58, green: 0.66, blue: 0.72))
                                    .background(Color(red: 0, green: 0.34, blue: 0.81).opacity(0.05))
                                    .font(.custom("ProximaNova-Regular", size: 11)
                                        .weight(.bold))
                            }
                            .padding(6)
                            
                        }
                        Text("\(industryName)")
                            .font(.custom("ProximaNova-Regular", size: 16)
                                .weight(.light)
                            )
                            .kerning(0.84)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.41, green:0.47, blue:0.53))
                        Text("www.powerhrg.com")
                            .font(.custom("ProximaNova-Regular", size: 14))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0, green: 0.34, blue: 0.81))
                        
                        
                        HStack(spacing: 10){
                            Text("**\(followers)** Followers")
                                .foregroundColor(Color(red: 0.14, green: 0.17, blue: 0.26))
                                .font(.custom("ProximaNova-Regular", size: 15))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.14, green: 0.17, blue: 0.26))
                            
                            Text("**\(employees)** Employees")
                                .foregroundColor(Color(red: 0.14, green: 0.17, blue: 0.26))
                                .font(
                                    .custom("ProximaNova-Regular", size: 15))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.14, green: 0.17, blue: 0.26))
                        }
                        .padding(.top,10)
                        
                        
                    }
                    
                }
                
            }
        }
    }
}

//#Preview {
//    CompanyHeaderView(companyName: <#String#>, logoImage: <#String#>, industryName: <#String#>, isFollowing: <#Binding<Bool>#>)
//}
