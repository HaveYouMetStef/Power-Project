//
//  ContentView.swift
//  Power_HRG_Project
//
//  Created by Stef Castillo on 9/16/23.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Variables & Constants
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
    
    //MARK: Start of Body
    var body: some View {
        
        VStack {
                //MARK: Company Header
            CompanyHeaderView(companyName: "Power HRG", logoImage: "Power Logo", industryName: "Technology", followers: "768", employees: "1,068", isFollowing: $isFollowing)
                .padding(.bottom, 31)
            //MARK: About Section
            AboutSectionView(title: "About", description: "As the highest-rated residential remodeler in the nation, our international technology team builds a custom suite of products that continuously transform our business.")
            
            //MARK: FollowMessageButtonsView
            FollowMessageButtonsView(isFollowing: $isFollowing)
                
                
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
            //End of ZStack to the first section
            
            //MARK: Employees Section
            //will display the second section of the employees screen
            EmployeeListView()
        }
        //MARK: End of Body
    }
 
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }



