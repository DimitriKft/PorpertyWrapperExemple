//
//  SwiftUIView.swift
//  DataFlowSwiftUI
//
//  Created by dimitri on 23/06/2022.
//

import SwiftUI

struct SwiftUIView: View {
    
   @State var transports = [
       Transport(image: "ant", color: "rose"),
       Transport(image: "tortoise", color: "vert")
   ]

    var body: some View {
        VStack {
            ForEach(0..<transports.count){ index in
                Button(action: {
                    if transports[index].color == "rose"{
                        transports[index].color = "vert"
                    }else{
                        transports[index].color = "rose"
                    }
                }, label: {
                    Image(systemName: transports[index].image)
                        .foregroundColor(Color(transports[index].color))
                        .font(.largeTitle)
                })
            
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

struct Transport :Identifiable {
    
    var id = UUID()
    var image: String
    var color: String
}

