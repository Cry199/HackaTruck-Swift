//
//  MusicaDetalhe.swift
//  Aula-4-Swift
//
//  Created by Student02 on 05/09/23.
//

import SwiftUI

struct MusicaDetalhe: View {
    
    let backgroundGradient = LinearGradient(
        colors: [Color.green, Color.black],
        startPoint: .top, endPoint: .bottom)
    
    @State var x : Music
    
    var body: some View {
        
        ZStack
        {
            backgroundGradient
            
            VStack{
                AsyncImage(url: URL(string: "\(x.link)")) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 300, height: 300)
                
                Text("\(x.name)")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                    .padding(.trailing, 30.0)
                    .lineLimit(1)
                    .truncationMode(.middle)
                
                Text("\(x.arti)")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                    .padding(.trailing, 30.0)
                    .lineLimit(1)
                    .truncationMode(.middle)
            }
        }
        .ignoresSafeArea()

    }
}

struct MusicaDetalhe_Previews: PreviewProvider {
    static var previews: some View {
        MusicaDetalhe(x: Music(name: "", arti: "", link: ""))
    }
}
