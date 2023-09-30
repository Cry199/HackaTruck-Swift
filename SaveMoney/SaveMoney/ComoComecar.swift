//
//  ComoComecar.swift
//  SaveMoney
//
//  Created by Student02 on 26/09/23.
//

import SwiftUI

struct ComoComecar: View {
    
    @StateObject var viewModel1 = ViewModel1()
    
    var body: some View
    {
        NavigationStack
        {
          ZStack()
            {
                VStack{
                    Image("ComoComecarP4")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                    Spacer()
                    Text("Como Começar?")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .padding(10.0)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20).stroke(Color("ColorApp"))
                        )
                    Spacer()
                    List {
                        ForEach(viewModel1.conteudo1, id: \._id) { i in
                            
                            NavigationLink(destination: TextoInfoDetalhe(x: i)){
                                
                                VStack
                                {
                                    
                                    Text(i.List!)
                                        .font(.title2)
                                        .listRowBackground(Color.green)
                                        .foregroundColor(Color.white)
                                }
                            }
                            .listRowBackground(Color("ColorApp"))
                        }
                            }
                    .scrollContentBackground(.hidden)
                    Spacer()
                }
            }
            .onAppear(){
                viewModel1.fetch()
            }
        }
    }
}

struct ComoComecar_Previews: PreviewProvider {
    static var previews: some View {
        ComoComecar()
    }
}
