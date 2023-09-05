//
//  ContentView.swift
//  Aula-1-Swift
//
//  Created by Student02 on 31/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("Captura de Tela 2023-01-18 às 00.12.11")
                .renderingMode(.original)
                .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                .aspectRatio(contentMode: .fit)
                .padding()
            Text("HackaTruck")
                .font(.title)
                .foregroundColor(Color.blue)
            HStack{
                Text("Make")
                    .foregroundColor(Color.orange)
                Text("Space")
                    .foregroundColor(Color.red)
            }
            
        }
            
            
            
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
