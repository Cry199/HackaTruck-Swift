//
//  NavigationTStack.swift
//  Aula-3-Swift
//
//  Created by Student02 on 04/09/23.
//

import SwiftUI

struct NavigationTStack: View {
    
    var body: some View {
        
        VStack
        {
            NavigationStack
            {
                NavigationLink("Ir para Tela 1") {
                    NavigationStackTela1()
                }
                
                NavigationLink("Ir para Tela 2") {
                    NavigationStackTela2()
                }
                
                NavigationLink("Ir para Tela 3") {
                    NavigationStackTela3()
                }
            }
        }
    }
    
}
struct NavigationTStack_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTStack()
    }
}
