//
//  AppStorageView.swift
//  DataFlowSwiftUI
//
//  Created by dimitri on 20/06/2022.
//

import SwiftUI

struct AppStorageView: View {
    @AppStorage("name") var name: String = ""
    var body: some View {
        VStack {
            Text("**AppStorage** wrapper de propriété est utilisé pour **lire et écrire des valeurs dans le UserDefaults**. Chaque fois que la valeur du AppStorage wrapper depropriété **change**, la vue SwiftUI est **invalidée et redessinée.")
                .padding()
            Text("Nom: \(name)")
                .fontWeight(.bold)
                .font(.title)
            
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 370, height: 50)
                    .foregroundColor(.secondary)
                TextField("changer de nom", text: $name)
                    .padding()
            }
        }
    }
}


struct AppStorageView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageView()
    }
}
