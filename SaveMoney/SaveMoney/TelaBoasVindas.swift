//
//  TelaBoasVindas.swift
//  SaveMoney
//
//  Created by Student02 on 26/09/23.
//

import SwiftUI

struct TelaBoasVindas: View {
    var body: some View {
        NavigationStack{
            ScrollView(.vertical, showsIndicators: false) {
                Image("TelaBoasVindasP1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200)
                VStack {
                    Text("Guarde seus trocadinhos, amiguinho!")
                        .font(.title)
                        .multilineTextAlignment(.center)
                    Spacer()
                    Spacer()
                    Text("Juntar dinheirinho é muito importante. Vou te contar o porquê:")
                        .font(.title2)
                        .multilineTextAlignment(.center)
                    Spacer()
                    Spacer()
                    Spacer()
                    Text("Com o dinheiro guardado, você pode comprar um brinquedo legal no futuro. Ou ir no parque de diversões! Não é legal?Se acontecer algum imprevisto, como seu videogame quebrar, o dinheiro guardado pode ajudar a consertar.Guardar dinheiro vai te deixar mais tranquilo e feliz. Você não vai precisar se preocupar com as coisas.Comece guardando só um pouquinho. Todo mês, guarde um pouco a mais.Antes de gastar seu dinheiro, pense bem no que é mais importante pra você. Se guardar vira um hábito, você vai juntar uma boa quantia com o tempo. E vai poder realizar muitos sonhos e planos divertidos no futuro!Seja responsável e corra para o cofrinho ou caderneta de poupança. Você consegue!")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                }.onDisappear(){
                    UserDefaults.standard.set(false, forKey: "tes")
                }
                .frame(width: 310)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 16)
                    .stroke(Color("ColorApp"), lineWidth: 6))
                Spacer()
                NavigationLink(destination: ContentView()) {
                    Text("Vamos Comecar")
                        .font(.title)
                        .frame(width: 220,height: 80)
                        .font(.headline)
                        .padding()
                        .background(Color("ColorApp"))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
            }
        }
        .ignoresSafeArea()
    }
}

struct TelaBoasVindas_Previews: PreviewProvider {
    static var previews: some View {
        TelaBoasVindas()
    }
}
