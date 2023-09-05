//
//  D1.swift
//  Aula-2-Swift
//
//  Created by Student02 on 01/09/23.
//

import SwiftUI


struct D1: View {
    
    @State private var givenAltura: String = "";
    @State private var givenPeso: String = "";
    @State private var givenImc: String = "";
    @State private var bgColor = Color.white;
    
    var body: some View {
        ZStack{
            
            bgColor
                .ignoresSafeArea()
                
            VStack{
                Text("Calculadora de IMC")
                    .font(.title)
                
                TextField("Peso", text: $givenPeso)
                    .multilineTextAlignment(.center)
                
                TextField("Altura", text: $givenAltura)
                    .multilineTextAlignment(.center)
                
                
                Button("Calcular") {
                    
                    let peso = Double(givenPeso) ?? 0.0
                    let altura = Double(givenAltura) ?? 0.0
                    
                    let imc = peso / (altura * altura);
                    
                    if(imc < 18.5)
                    {
                        givenImc = "Baixo peso"
                        bgColor = Color("baixopeso")
                    }
                    else if (imc > 18.5 && imc <= 24.99)
                    {
                        givenImc = "Normal"
                        bgColor = Color("normal")
                    }
                    else if (imc > 25 && imc <= 29.99)
                    {
                        givenImc = "SobrePeso"
                        bgColor = Color("sobrepeso")
                    }
                    else
                    {
                        givenImc = "Obesidade"
                        bgColor = Color("obesidade")
                    }
                }
                
                Spacer()
                
                Text(givenImc)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    
                Spacer()
                
                Image("tabela-IMC")
                    .renderingMode(.original)
                    .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                    .aspectRatio(contentMode: .fit)
            }
        }
    
    }
}

struct D1_Previews: PreviewProvider {
    static var previews: some View {
        D1()
    }
}
