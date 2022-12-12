//
//  StateObjectDetailView.swift
//  DataFlowSwiftUI
//
//  Created by dimitri on 20/06/2022.
//

import SwiftUI

struct StateObjectDetailView: View {
    @StateObject var me: Person
    var body: some View {
        VStack {
            Text(me.getFullName())
            Text("Mon age est de \(me.age)")
            HStack {
                Text("Age: \(me.age) ans")
                Button("Joyeux Anniversaire") {
                    self.me.happyBirthday()
                }
            }
        }
    }
}

struct StateObjectDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StateObjectDetailView(me: Person())
    }
}
