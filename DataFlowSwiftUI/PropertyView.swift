//
//  ProPertyView.swift
//  DataFlowSwiftUI
//
//  Created by dimitri on 20/06/2022.
//

import SwiftUI

struct PropertyView: View {
    //La Property
    var tortoise = "tortoise"
    
    var body: some View {
        VStack {
            Text("**Données immutables** , c’est à dire qu’il est **seulement possible d’initialiser cette propriété** lors de la création de la vue et de **lire ces données**.")
                .padding()
            Image(systemName: tortoise)
                .font(.title)
                .padding()
                .foregroundColor(.green)
        }
     
    }
}

struct ProPertyView_Previews: PreviewProvider {
    static var previews: some View {
        PropertyView()
    }
}
