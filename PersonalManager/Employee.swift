//
//  Employee.swift
//  PersonalManager
//
//  Created by User on 6/11/2567 BE.
//

import Foundation

struct Employee: Identifiable {
    let id = UUID()
    var name: String
    var position: String
    var salary: Double
}
