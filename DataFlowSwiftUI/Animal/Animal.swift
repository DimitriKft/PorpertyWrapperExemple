//
//  Animal.swift
//  DataFlowSwiftUI
//
//  Created by dimitri on 24/06/2022.
//

import Foundation


// STRUCT DE MODELISATION DE DONNEES
struct Animal: Identifiable{
    var id = UUID()
    var name: String
    var img: String
}

// DONNEES INSTANCIER DE LA STRUCT ANIMAL
var animals = [
    Animal(name: "Fourmi", img: "ant"),
    Animal(name: "Tortue", img: "tortoise"),
    Animal(name: "Lapin", img: "hare")
]
