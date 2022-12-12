//
//  StructDiffView.swift
//  DataFlowSwiftUI
//
//  Created by dimitri on 24/06/2022.
//

import SwiftUI

struct StructDiffView: View {
    var body: some View {
        VStack {
            List(animals){ animal in
                AnimalView(name: animal.name, img: animal.img)
            }
        }
    }
}

struct StructDiffView_Previews: PreviewProvider {
    static var previews: some View {
        StructDiffView()
    }
}






