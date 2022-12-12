//
//  BindingView.swift
//  DataFlowSwiftUI
//
//  Created by dimitri on 20/06/2022.
//

import SwiftUI

struct BindingView: View {
    @State var textColor = Color.black
    
    var body: some View {
        VStack {
            Text("Pour qu’une **sous-vue** puisse intéragir sur une **propriété de la vue qu’il contient** sans créer une seconde **source de vérité**, nous allons utiliser **@Binding dans la sous vue**. Cela permettra de créer une référence de la propriété, sans en créer une autre. pour transmettre une propriété binding, la vue principale ajoutera le **$ avant le nom de la propriété**.")
                .padding()
            Image(systemName: "tortoise")
                .font(.largeTitle)
                .foregroundColor(textColor)
                .padding()
            HStack {
                Subview(viewColor: .red, selectedColor: $textColor)
                Subview(viewColor: .orange, selectedColor: $textColor)
                Subview(viewColor: .green, selectedColor: $textColor)
            }
        }
    }
}

struct Subview: View {
    var viewColor: Color
    @Binding var selectedColor: Color
    
    var body: some View {
        Button(action: {
            self.selectedColor = viewColor
        }, label: {
            viewColor.frame(width: 50, height: 50, alignment: .center).clipShape(Circle())
        })
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView()
    }
}
