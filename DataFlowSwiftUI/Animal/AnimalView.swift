//
//  AnimalView.swift
//  DataFlowSwiftUI
//
//  Created by dimitri on 24/06/2022.
//

import SwiftUI

struct AnimalView: View {
    var name: String
    var img: String
    var body: some View {
        HStack {
            Image(systemName: img)
            Text(name)
                .fontWeight(.bold)
                .foregroundColor(.red)
        }
    }
}


struct AnimalView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalView(name: "Fourmi", img: "ant")
    }
}
