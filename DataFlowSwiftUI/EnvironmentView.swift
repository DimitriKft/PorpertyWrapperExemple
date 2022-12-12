//
//  EnvironmentView.swift
//  DataFlowSwiftUI
//
//  Created by dimitri on 20/06/2022.
//

import SwiftUI

struct EnvironmentView: View {
    

    @Environment(\.locale) var locale
    @Environment(\.calendar) var calendar
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack {
            Text("Chaque View dépend d’un **Environnement**. Lorsque l’on parle d’environnement on parle de l’**écosystème de l’application**, de ses réglages, de son positionnement dans l’application etc...")
                .padding()
            VStack(alignment: .leading) {
                Text("**Localisation:** \(locale.identifier)")
                Text("**Calendrier:** \(calendar.description)")
                Text("**Theme:** \(colorScheme == .dark ? "Dark mode" : "Light mode")");
                
                
             
            }
        }
    }
}
struct EnvironmentView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentView()
    }
}
