//
//  ContentView.swift
//  Power_HRG_Project
//
//  Created by Stef Castillo on 9/16/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack(alignment: .top, spacing: 20) {
                Image("Power Logo")
                    .resizable()
                    .frame(width: 79, height: 96)
                
                HStack(alignment: .firstTextBaseline, spacing: 5) {
                    VStack(alignment: .leading, spacing: 5){
                        HStack {
                        Text("Power HRG")
                            .font(.system(size: 22, weight: .bold))
                       
                            Text("COMPANY")
                                .foregroundColor(Color(red: 0.58, green: 0.66, blue: 0.72))
                                .background(Color(red: 0, green: 0.34, blue: 0.81).opacity(0.05))
                                .font(.system(size: 11, weight: .bold))
                        }
                        Text("Technology")
                            .font(.system(size: 15, weight: .medium))
                            .foregroundColor(.gray)
                        Text("[www.powerhrg.com](www.powerhrg.com)")
                            .font(.system(size: 14))
                        
                        HStack{
                        Text("**768** Followers")
                                .foregroundColor(Color(red: 0.14, green: 0.17, blue: 0.26))
                        
                        Text("**1,068** Employees")
                                .foregroundColor(Color(red: 0.14, green: 0.17, blue: 0.26))
                        }
                        
                    }
                    
                }
                
            }
            .padding(.bottom, 16)
            
            
            //MARK - About Section

            Text("**About**")

            
            Text("As the highest-rated residential remodeler in the nation, our international technology team builds a custom suite of products that continuously transform our business. ")
              .font(Font.custom("Proxima Nova", size: 16))
              .foregroundColor(Color(red: 0.41, green: 0.47, blue: 0.53))
              .frame(width: 324, alignment: .topLeading)
            
            HStack {
            Button(action: {
                // Follow button action
            }) {
                Text("Follow")
                    .frame(maxWidth: .infinity)
                    .frame(height: 40)
                    .background(Color(red: 0, green: 0.34, blue: 0.81))
                    .cornerRadius(4)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            
                Button(action: {
                    // Message button action
                }) {
                    Text("Message")
                        .frame(maxWidth: .infinity)
                        .frame(height: 40)
                        .background(Color(red: 0, green: 0.34, blue: 0.81).opacity(0.05))
                        .cornerRadius(4)
                        .foregroundColor(.blue)
                }
                .padding(.leading, 8)
            }
            
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

