//
//  Car.swift
//  DataFlowSwiftUI
//
//  Created by dimitri on 20/06/2022.
//

import SwiftUI

class Car: ObservableObject {
    var brand: String = "Peugeot"
    var model: String = "407"
    @Published var km: Int = 86000
    
    func parisToulouse(){
        return km += 800
    }
}
