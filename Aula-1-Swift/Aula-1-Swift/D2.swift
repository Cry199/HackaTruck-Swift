//
//  D2.swift
//  Aula-1-Swift
//
//  Created by Student02 on 31/08/23.
//

import SwiftUI

struct D2: View {
    
    var body: some View {
        
        VStack {
            VStack{
                Image("Captura de Tela 2023-01-18 às 00.12.11")
                    .renderingMode(.original)
                    .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom, 30.0)

                Image("Captura de Tela 2023-01-18 às 00.12.11")
                    .renderingMode(.original)
                    .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .padding(.bottom, 30.0)
                    .overlay(Text("HACKATRUCK")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.red)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 150.0)
                        .frame(width: nil, height: 250.0))
                    .font(.title)
                
                HStack {
                    
                    Rectangle()
                        .padding(.top, 10.0)
                        .frame(width: 250.0, height: 150.0)
                        .overlay(Text("Make")
                        .foregroundColor(Color.orange)
                        .fontWeight(.semibold)
                        .padding(.leading, -50.0))
                        .overlay(Text("Space")
                        .foregroundColor(Color.red)
                        .fontWeight(.semibold)
                        .padding(.trailing, -50.0)
                        )
                    
                }
                
            }
        }


    }
}

struct D2_Previews: PreviewProvider {
    static var previews: some View {
        D2()
    }
}
