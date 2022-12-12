//
//  SourthOfTruthView.swift
//  DataFlowSwiftUI
//
//  Created by dimitri on 20/06/2022.
//

import SwiftUI

struct SourthOfTruthView: View {
    var body: some View {
        Text("Le **DataFlow** SwiftUI est basé sur le concept selon lequel **les données ont une seule source de vérité**. Avec une seule source de vérité, il y a un et **un seul endroit qui détermine la valeur d'une donnée.**")
            .padding()
    }
}

struct SourthOfTruthView_Previews: PreviewProvider {
    static var previews: some View {
        SourthOfTruthView()
    }
}
