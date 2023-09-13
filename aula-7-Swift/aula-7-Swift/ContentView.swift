//
//  ContentView.swift
//  aula-7-Swift
//
//  Created by Student02 on 13/09/23.
//

import SwiftUI

struct ContentView: View
{
    let backgroundGradient = LinearGradient(
        colors: [Color.yellow, Color.white], startPoint: .top, endPoint: .bottom)
    
    @StateObject var viewModel = ViewModel()
    
    @StateObject var viewModel2 = ViewModel2()
    
    var body: some View {
        ZStack
        {
            backgroundGradient.ignoresSafeArea()
            
            VStack
            {
                Spacer()
                
                if let resposta = viewModel2.conteudoTe {
                Spacer()
                
                AsyncImage(url: URL(string: resposta.url))
                { image in image.resizable() } placeholder: {
                    ProgressView()
                }
                .frame(width: 300, height: 300)
                 
                    Text(resposta.message)
                }
                Spacer()
                
                Button("Click Aqui")
                {
                    viewModel.fetch()
                    viewModel2.fetch()
                }
                
                Spacer()
                
                ScrollView
                {
                    ForEach(viewModel.conteudo, id: \._id){ i in
                        
                        Spacer()
                        
                        Text(i.name!)
                            .font(.title)
                        
                        Spacer()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
