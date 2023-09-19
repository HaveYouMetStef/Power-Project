//
//  ContentView.swift
//  Power_HRG_Project
//
//  Created by Stef Castillo on 9/16/23.
//

import SwiftUI

struct ContentView: View {
    
    //Variable
    @State private var isFollowing = false
    
    //Allows you to check what font's you're able to use.
    //    init() {
    //        for familyName in UIFont.familyNames {
    //            print(familyName)
    //
    //            for fontName in UIFont.fontNames(forFamilyName: familyName) {
    //                print("-- \(fontName)")
    //            }
    //        }
    //    }
    
    struct Constants {
        static let BorderRadiusMd: CGFloat = 6
        static let PaddingMd: CGFloat = 24
    }
    
    var body: some View {
        
        VStack {
            VStack(alignment: .leading, spacing: 16) {
                HStack(alignment: .top, spacing: 20) {
                    Image("Power Logo")
                        .resizable()
                        .frame(width: 79, height: 96)
                    
                    HStack(alignment: .firstTextBaseline, spacing: 5) {
                        VStack(alignment: .leading, spacing: 5){
                            HStack {
                                Text("Power HRG")
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
                            Text("Technology")
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
                                Text("**768** Followers")
                                    .foregroundColor(Color(red: 0.14, green: 0.17, blue: 0.26))
                                    .font(.custom("ProximaNova-Regular", size: 15))
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color(red: 0.14, green: 0.17, blue: 0.26))
                                
                                Text("**1,068** Employees")
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
                .padding(.bottom, 16)
                
                
                //MARK - About Section
                
                Text("**About**")
                    .font(
                        .custom("ProximaNova-Regular", size: 16)
                        .weight(.bold)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.14, green: 0.17, blue: 0.26))
                    .frame(width: 46, alignment: .center)
                
                Text("As the highest-rated residential remodeler in the nation, our international technology team builds a custom suite of products that continuously transform our business.")
                    .font(.custom("ProximaNova-Regular", size: 16))
                    .foregroundColor(Color(red: 0.41, green: 0.47, blue: 0.53))
                    .frame(width: 324, alignment: .topLeading)
                    .lineSpacing(7)
                    .padding(.bottom)
                
                
                
                HStack {
                    Button(action: {
                        // Follow button action
                        isFollowing.toggle()
                    }) {
                        Text(isFollowing ? "Following" : "Follow")
                            .font(.custom("ProximaNova-Regular", size: 16)
                                .weight(.semibold))
                            .frame(maxWidth: .infinity)
                            .frame(height: 40)
                            .background(isFollowing ? Color.green : Color(red: 0, green: 0.34, blue: 0.81))
                            .background(Color(red: 0, green: 0.34, blue: 0.81))
                            .cornerRadius(4)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    
                    
                    Button(action: {
                        // Message button action
                    }) {
                        Text("Message")
                            .font(.custom("ProximaNova-Regular", size: 16)
                                .weight(.semibold))
                            .frame(maxWidth: .infinity)
                            .frame(height: 40)
                            .background(Color(red: 0, green: 0.34, blue: 0.81).opacity(0.05))
                            .cornerRadius(4)
                            .foregroundColor(.blue)
                    }
                    
                    .padding(.leading, 8)
                    
                }
                
            }
            .padding(Constants.PaddingMd)
            .frame(maxWidth: 378, maxHeight: 370, alignment: .topLeading)
            .background(.white)
            .cornerRadius(Constants.BorderRadiusMd)
            .overlay(
                RoundedRectangle(cornerRadius: Constants.BorderRadiusMd)
                    .inset(by: -0.5)
                    .stroke(Color(red: 0.89, green: 0.91, blue: 0.94), lineWidth: 1)
            )
            //MARK - Employees Section

            EmployeeListView()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

