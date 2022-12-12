//
//  ContentView.swift
//  DataFlowSwiftUI
//
//  Created by dimitri on 20/06/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Source of truth", destination: SourthOfTruthView())
                NavigationLink("Property", destination: PropertyView())
                NavigationLink("@State", destination: StateView())
                NavigationLink("@Binding", destination: BindingView())
                NavigationLink("@Environment", destination: EnvironmentView())
                NavigationLink("@ObservedObject", destination: ObservedView())
                NavigationLink("@StateObject", destination: StateObjectView())
                NavigationLink("@AppStorage", destination: AppStorageView())            }
            .navigationTitle("Le DataFlow")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        ContentView()
        ContentView()
            .environment(\.colorScheme, .dark)
    }
}
