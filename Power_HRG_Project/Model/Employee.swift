//
//  Employee.swift
//  Power_HRG_Project
//
//  Created by Stef Castillo on 9/17/23.
//

import Foundation

struct Employee: Identifiable {
    var id = UUID()
    var firstName: String
    var lastName: String
    var jobTitle: String

    
    //use to create the initials on Avatar
    var initials: String {
        return "\(firstName.first!)\(lastName.first!)"
    }
}
