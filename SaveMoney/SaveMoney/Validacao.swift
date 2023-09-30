//
//  Validacao.swift
//  Projeto
//
//  Created by Student22 on 25/09/23.
//

import SwiftUI

struct Validacao: View {
    @AppStorage("tes") var teste: Bool = true
        var body: some View {
            Group {
                if teste {
                    TelaBoasVindas()
                } else{
                    ContentView()
                }
            }
        }
    }

struct Validacao_Previews: PreviewProvider {
    static var previews: some View {
        Validacao()
    }
}
