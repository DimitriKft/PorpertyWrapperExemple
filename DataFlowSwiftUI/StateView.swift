//
//  StateView.swift
//  DataFlowSwiftUI
//
//  Created by dimitri on 20/06/2022.
//

import SwiftUI


struct StateView: View {
    //Le @State
    @State var imageFill = false
    
    var body: some View {
        VStack {
            Text("Nous avons vu que **property** est seulement pour la **lecture** de données. Si on veut **modifier cette donnée** tout en restant avec une seule **source de vérité**, nous devrons utiliser le « property wrapper » **@State**. Ce mot clé placé avant la property permet la **lecture ET la modification de cette propriété au sein de sa struct View**.Vous pouvez lire et modifier une propriété précédée de @State.")
                .padding()
            ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 100, height: 50)
                Image(systemName: (self.imageFill) ? "ant" : "tortoise")
                    .foregroundColor(.white)
            }
            Button {
                self.imageFill.toggle()
            }label: {
                    Text("Transforme la tortue en fourmi")
            }
        }
    
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
