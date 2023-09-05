//
//  D2.swift
//  Aula-3-Swift
//
//  Created by Student02 on 04/09/23.
//

import SwiftUI

struct D2: View {
    
    let systemImages = ["gear", "clock", "eye","pencil","eye"]
    
    var body: some View {
        ScrollView
        {
            VStack {
                  ForEach(systemImages, id: \.self) { imageName in
                      Image(systemName: imageName)
                          .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                          .frame(width: 300.0, height: 300.0)
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
