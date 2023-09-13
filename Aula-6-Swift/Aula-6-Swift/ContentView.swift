//
//  ContentView.swift
//  Aula-6-Swift
//
//  Created by Student02 on 11/09/23.
//

import SwiftUI

struct ContentView: View {
    
    let backgroundGradient = LinearGradient(
        colors: [Color.white, Color.white, Color.indigo], startPoint: .top, endPoint: .bottom)
    
    @StateObject var viewModel = ViewModel()
    
    @State var teste = "Carregando..."
    
    @State var change = false
    
        
    var body: some View {
        
        ZStack
        {
            backgroundGradient.ignoresSafeArea()
            
            VStack
            {
                if let resposta = viewModel.conteudoTe {
                Spacer()
                
                AsyncImage(url: URL(string: resposta.url))
                { image in image.resizable() } placeholder: {
                    ProgressView()
                }
                .frame(width: 300, height: 300)
                
                }
                Spacer()
                
                Button("Click Aqui")
                {
                    viewModel.fetch()
                }
                
                Spacer()
            
                

                Spacer()
            }
            
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
