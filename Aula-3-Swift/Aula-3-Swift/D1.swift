//
//  D1.swift
//  Aula-3-Swift
//
//  Created by Student02 on 04/09/23.
//

import SwiftUI

struct D1: View {
    
    let i = ["A List Item","A Second List Item","A List Item","1","2","3","2","3","2","3","2","3","2","3","A List Item","A Second List Item","A List Item"]
    
    var body: some View {
        
        List(i, id: \.self) {
            imageName in Text(imageName)
                .font(.title)
        }
    }
}

struct D1_Previews: PreviewProvider {
    static var previews: some View {
        D1()
    }
}
