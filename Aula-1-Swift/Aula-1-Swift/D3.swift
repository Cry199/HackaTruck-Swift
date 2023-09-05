//
//  D3.swift
//  Aula-1-Swift
//
//  Created by Student02 on 31/08/23.
//

import SwiftUI



struct D3: View {
    
    @State private var alert = false
    
    @State private var givenName: String = ""
    
    var body: some View {
        
        ZStack{
            Image("Captura de Tela 2023-01-18 às 00.12.11")
                .padding(.top)
                .frame(width: nil, height: 800.0)
                .zIndex(1)
                .opacity(0.2)
            
            VStack {
                
                Text("Bem-Vindo, " + givenName)
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .frame(height: 60.0)
                
                TextField(
                            "Given Name TEXTE",
                            text: $givenName
                )
                .padding(.bottom, 500)
                .multilineTextAlignment(.center)
                .frame(width: 350, height: 30)
                
                    Spacer()
                
                Image("logo")
                    .resizable(capInsets: EdgeInsets())
                    .frame(width: 250.0, height: 100.0)
                
                Image("truck")
                    .resizable(capInsets: EdgeInsets())
                    .padding(.bottom)
                    .frame(width: 250.0, height: 100.0)
                
                Spacer();
                
                Button("Entrar") {
                    alert = true
                }
                .alert(isPresented: $alert){
                    Alert(title:  Text ("ALERT"),
                          message: Text ("TEste"),dismissButton: .default(Text("Teste222")))
                }
            }
        }
    }
    
    struct D3_Previews: PreviewProvider {
        static var previews: some View {
            D3()
                .frame(height: 100.0)
        }
    }
}
