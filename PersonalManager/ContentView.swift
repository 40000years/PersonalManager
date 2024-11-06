//
//  ContentView.swift
//  PersonalManager
//
//  Created by User on 6/11/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var employees: [Employee] = [
        Employee(name: "John Doe", position: "Manager", salary: 50000),
        Employee(name: "Jane Smith", position: "Developer", salary: 45000)
    ]
    
    var body: some View {
        NavigationView {
            List(employees) { employee in
                VStack(alignment: .leading) {
                    Text(employee.name)
                        .font(.headline)
                    Text(employee.position)
                        .font(.subheadline)
                    Text("Salary: $\(employee.salary, specifier: "%.2f")")
                        .font(.subheadline)
                }
            }
            .navigationTitle("Employees")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
