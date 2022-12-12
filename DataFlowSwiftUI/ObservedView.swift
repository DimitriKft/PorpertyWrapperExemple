//
//  ObservedView.swift
//  DataFlowSwiftUI
//
//  Created by dimitri on 20/06/2022.
//

import SwiftUI

struct ObservedView: View {
    @ObservedObject var car = Car()
    var body: some View {
        VStack {
            Text("Lors de l'utilisation d'objets observés, il y a **trois éléments clés** avec lesquels nous devons travailler : le **ObservableObject** protocole est utilisé avec une **classe qui peut stocker des données**, le **@ObservedObject** wrapper de propriété est utilisé dans une vue pour **stocker une instance d'objet observable**, et le **@Published** wrapper de propriété est ajouté à toutes les propriétés à l'intérieur d'un objet observé **qui devraient entraîner la mise à jour des vues lorsqu'elles changent.**")
                .padding()
            Text("Ma \(car.brand) \(car.model) a \(car.km) Kilomètres")
            Button() {
                car.parisToulouse()
            }label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 100, height: 50)
                    .foregroundColor(.red)
                    Text("Go Paris !")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct ObservedView_Previews: PreviewProvider {
    static var previews: some View {
        ObservedView()
    }
}
