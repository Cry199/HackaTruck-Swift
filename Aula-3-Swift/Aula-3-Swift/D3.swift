//
//  D3.swift
//  Aula-3-Swift
//
//  Created by Student02 on 04/09/23.
//

import SwiftUI




struct D3: View {
    
    let systemImages = ["gear", "clock", "eye","pencil","eye"]
    let String = ["1","2","3","2","3","2","3","2","3","2","3",]
    let String1 = ["A List Item","A Second List Item","A List Item","1","2","3","2","3","2","3","2","3","2","3","A List Item","A Second List Item","A List Item"]
    
    var body: some View {
        
        ScrollView
        {
            
            VStack {
                
                ForEach(String, id: \.self) {
                    imageName in Text(imageName)
                        .font(.title)
                }
                
                  ForEach(systemImages, id: \.self) { imageName in
                      Image(systemName: imageName)
                          .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                          .frame(width: 300.0, height: 300.0)
                  }
                
                ForEach(String1, id: \.self) {
                    imageName in Text(imageName)
                        .font(.title)
                }
            }
        }
        
    }
}

struct D3_Previews: PreviewProvider {
    static var previews: some View {
        D3()
    }
}
