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
        VStack(alignment: .leading, spacing: 0) {
            // Title 4
            Text("Employees")
              .font(
                Font.custom("Proxima Nova", size: 16)
                  .weight(.bold)
              )
              .foregroundColor(Color(red: 0.14, green: 0.17, blue: 0.26))
              .frame(width: 84, alignment: .leading)
            
            
                Text("jc")
                  .font(Font.custom("Proxima Nova", size: 14))
                  .multilineTextAlignment(.center)
                  .foregroundColor(.white)
                  .frame(width: 38, height: 38, alignment: .center)
                
                Text("Jason Cypret\nVice President of User Experience")
                  .font(
                    Font.custom("Proxima Nova", size: 16)
                      .weight(.bold)
                  )
                  .foregroundColor(Color(red: 0.14, green: 0.17, blue: 0.26))
            
            .frame(width: 38, height: 38)
            
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

