//
//  ContentView.swift
//  SaveMoney
//
//  Created by Student02 on 26/09/23.
//

import SwiftUI

struct ContentView: View {
    @State private var SelecionarTab = 1

    var body: some View {
        
    NavigationStack()
    {
        ZStack()
        {
           VStack()
            {
                Image("logo")
                    .renderingMode(.original)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350.0, height: 90.0)
                
                
                Text("O futuro brilhante começa com cada centavo poupado e investido hoje.")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .padding(10.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16).stroke(Color("ColorApp"))
                    )
                Spacer()
                NavigationLink(destination: ComoComecar()) {
                                    Text("Como Começar")
                                        .frame(width: 150)
                                        .font(.headline)
                                        .padding()
                                        .background(Color("ColorApp"))
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                }
                NavigationLink(destination: CalculadoraJuros()) {
                                    Text("Calculadora Juros")
                                        .frame(width: 150)
                                        .font(.headline)
                                        .padding()
                                        .background(Color("ColorApp"))
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                }
                NavigationLink(destination: Noticias()) {
                                    Text("Noticias")
                                        .frame(width: 150)
                                        .font(.headline)
                                        .padding()
                                        .background(Color("ColorApp"))
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                }
                

                Image("TelaDeLogoP2")
                    .renderingMode(.original)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350.0, height: 220.2)
                }
            }
        }
    .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
