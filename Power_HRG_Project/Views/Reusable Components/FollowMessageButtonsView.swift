//
//  FollowMessageButtonsView.swift
//  Power_HRG_Project
//
//  Created by Stef Castillo on 9/27/23.
//

import SwiftUI

struct FollowMessageButtonsView: View {
    @Binding var isFollowing: Bool
    var body: some View {
        //MARK: Follow and Message Buttons
        HStack {
            Button(action: {
                // When pressed the button will change from "Follow" to "Following" and the background will also turn green.
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
}

//#Preview {
//    FollowMessageButtonsView()
//}
