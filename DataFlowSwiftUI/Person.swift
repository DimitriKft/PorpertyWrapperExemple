//
//  Person.swift
//  DataFlowSwiftUI
//
//  Created by dimitri on 20/06/2022.
//

import SwiftUI

class Person: ObservableObject {
    var name: String = "Bruce"
    var surname: String = "Wayne"
    @Published var age: Int = 30
    
    func happyBirthday () {
        self.age += 1
    }
    
    func getFullName() -> String {
        return surname + " " + name
    }
}
