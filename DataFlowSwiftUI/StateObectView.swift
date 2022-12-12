//
//  StateObectView.swift
//  DataFlowSwiftUI
//
//  Created by dimitri on 20/06/2022.
//

import SwiftUI

struct StateObjectView: View {
    @StateObject var me = Person()
    var body: some View {
        VStack {
            Text("Nous avons vu précédemment le **@ObservedObject**. Cet outil nous servait à observer les changements d’un objet dans différentes vues. Cependant, **cet outil n’était pas spécifiquement fait pour être une source of truth ultime et il arrivait dans de rares cas que l’objet soit supprimé durant le rafraîchissement de vues**. Le **@StateObject aura la même fonctionnalité que le @ObservedObject mais ne sera jamais détruit pendant le mise à jour d’une View**.")
                .padding()
            Text(me.getFullName())
            Text("Age: \(me.age) ans")
            Button("Si tu appuies je vieillis") {
                self.me.happyBirthday()
            }
            NavigationLink("Vers le profil", destination: StateObjectDetailView(me: me))
                .padding()
        }
    }
}


struct StateObectView_Previews: PreviewProvider {
    static var previews: some View {
        StateObjectView()
    }
}
