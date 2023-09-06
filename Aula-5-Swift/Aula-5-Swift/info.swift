//
//  info.swift
//  Aula-5-Swift
//
//  Created by Student02 on 06/09/23.
//

import SwiftUI
import Foundation
import MapKit

struct info: View {
    
    @Environment(\.dismiss) var dismiss
    
    
    let backgroundGradient = LinearGradient(
        colors: [Color.white, Color.indigo, Color.green, Color.white], startPoint: .top, endPoint: .bottom)
    
    @State var x : Location

    var body: some View {
        
        ZStack
        {
            backgroundGradient.ignoresSafeArea()
            
            VStack
            {
                Button("Voltar")
                {
                    dismiss()
                }
                
                Spacer()
                
                Text("\(x.name)")
                    .font(.title)
                
                Spacer()
                
                AsyncImage(url: URL(string: x.flag))
                {
                    image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 300, height:300)
                
                Spacer()
                
                Text(x.description)
            }
        }
    }
}

struct info_Previews: PreviewProvider {
    static var previews: some View {
                
        info(x: Location(name: "", coordinate: CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0), flag: "", description: ""))
    }
}
