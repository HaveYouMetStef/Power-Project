//
//  EmployeeListView.swift
//  Power_HRG_Project
//
//  Created by Stef Castillo on 9/17/23.
//

import SwiftUI

struct EmployeeListView: View {
    
    //Constants
    struct Constants {
        static let BorderRadiusMd: CGFloat = 6
        static let PaddingMd: CGFloat = 24
    }
    
    //Test Employees
    let employees: [Employee] = [
        Employee(firstName: "Jason", lastName: "Cypret", jobTitle: "Vice President of User Experience"),
        Employee(firstName: "Justin", lastName: "Battenfield", jobTitle: "Director of User Experience"),
        Employee(firstName: "Courtney", lastName: "Long", jobTitle: "UX Design Mentor"),
        Employee(firstName: "Stephen", lastName: "Marshall", jobTitle: "Senior UX Engineer"),
        Employee(firstName: "Stef", lastName: "Castillo", jobTitle: "Associate iOS Developer")
        
    ]
    
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 18) {
                // Title 4
                Text("Employees")
                    .font(
                        Font.custom("Proxima Nova", size: 16)
                            .weight(.bold)
                    )
                    .foregroundColor(Color(red: 0.14, green: 0.17, blue: 0.26))
                    .frame(width: 84, alignment: .leading)
                
                //Employee Jason Cypret
                HStack {
                    
                    Text("JC")
                        .frame(width: 40, height: 40)
                        .background(Color(red: 0.76, green: 0.8, blue: 0.84))
                        .foregroundColor(.white)
                        .cornerRadius(20)
                    
                    
                    VStack(alignment: .leading) {
                        Text("Jason Cypret")
                            .font(.headline)
                        Text("Vice President of User Experience")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    
 
                }
                
                //Employee - Justin Battenfield
                HStack {
                    Text("JB")
                        .frame(width: 40, height: 40)
                        .background(Color(red: 0.76, green: 0.8, blue: 0.84))
                        .foregroundColor(.white)
                        .cornerRadius(20)
                    
                    
                    VStack(alignment: .leading) {
                        Text("Justin Battenfield")
                            .font(.headline)
                        Text("Director of User Experience")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                
                //Employee - Courtney Long
                HStack {
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 38, height: 38)
                      .background(
                        Image("Avatar")
                          .resizable()
                          .aspectRatio(contentMode: .fill)
                          .frame(width: 38, height: 38)
                          .clipped()
                      )
                      .cornerRadius(100)
                    
                    
                    VStack(alignment: .leading) {
                        Text("Courtney Long")
                            .font(.headline)
                        Text("UX Design Mentor")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                
                //Employee - Stephen Marshall
                HStack {
                    Text("SM")
                        .frame(width: 40, height: 40)
                        .background(Color(red: 0.76, green: 0.8, blue: 0.84))
                        .foregroundColor(.white)
                        .cornerRadius(20)
                    
                    
                    VStack(alignment: .leading) {
                        Text("Stephen Marshall")
                            .font(.headline)
                        Text("Senior UX Engineer")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                
                //Future Employee - Stef Castillo
                HStack {
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 38, height: 38)
                      .background(
                        Image("Stef_Headshot_2023")
                          .resizable()
                          .aspectRatio(contentMode: .fill)
                          .frame(width: 38, height: 38)
                          .clipped()
                      )
                      .cornerRadius(100)
                    
                    
                    VStack(alignment: .leading) {
                        Text("Stef Castillo")
                            .font(.headline)
                        Text("Associate iOS Developer")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                
                VStack(alignment: .center, spacing: 8) {
                    HStack(alignment: .firstTextBaseline, spacing: 8) {
                        Button(action: {
                            // Message button action
                        }) {
                            // Button Text - Default
                            Text("View All")
                              .font(
                                Font.custom("Proxima Nova", size: 14)
                                  .weight(.semibold)
                              )
                              .multilineTextAlignment(.center)
                              .foregroundColor(Color(red: 0, green: 0.34, blue: 0.81))
                        }
                    }
                }
                .padding(.horizontal, 34)
                .padding(.vertical, 7)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .cornerRadius(4)
            }
            .padding(Constants.PaddingMd)
            .frame(width: 378, height: 370, alignment: .topLeading)
            .background(.white)
            .cornerRadius(Constants.BorderRadiusMd)
            .overlay(
                RoundedRectangle(cornerRadius: Constants.BorderRadiusMd)
                    .inset(by: -0.5)
                    .stroke(Color(red: 0.89, green: 0.91, blue: 0.94), lineWidth: 1)
            )
        }
    }
}

//MARK - Employee Row View
struct EmployeeRowView: View {
    var employee: Employee
    
    var body: some View {
        HStack {
            Text(employee.initials)
                .frame(width: 40, height: 40)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(20)
            
            VStack(alignment: .leading) {
                Text("\(employee.firstName) \(employee.lastName)")
                    .font(.headline)
                Text(employee.jobTitle)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
}


struct EmployeeListView_Previews: PreviewProvider {
    static var previews: some View {
        EmployeeListView()
    }
}

