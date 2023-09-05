//
//  ContentView.swift
//  Aula-4-Swift
//
//  Created by Student02 on 05/09/23.
//

import SwiftUI

struct Music: Identifiable{
    var id = UUID();
    var name : String;
    var arti : String;
    var link : String;
}


var arrayMusic = [
    Music(name: "teste 4", arti: "arti 4", link: "https://livecoins.com.br/wp-content/uploads/2023/06/Meme-Pepe-com-vestuario-mostrando-vela-verde-de-grafico-de-precos-em-alta.jpg.webp"),
    Music(name: "teste 5", arti: "arti 5", link: "https://livecoins.com.br/wp-content/uploads/2023/06/Meme-Pepe-com-vestuario-mostrando-vela-verde-de-grafico-de-precos-em-alta.jpg.webp"),
    Music(name: "teste 6", arti: "arti 6", link: "https://livecoins.com.br/wp-content/uploads/2023/06/Meme-Pepe-com-vestuario-mostrando-vela-verde-de-grafico-de-precos-em-alta.jpg.webp"),
    Music(name: "teste 4", arti: "arti 4", link: "https://livecoins.com.br/wp-content/uploads/2023/06/Meme-Pepe-com-vestuario-mostrando-vela-verde-de-grafico-de-precos-em-alta.jpg.webp"),
    Music(name: "teste 5", arti: "arti 5", link: "https://criptonizando.com/wp-content/uploads/2023/05/Pepe_Coins_1682563926.webp"),
    Music(name: "teste 6", arti: "arti 6", link: "https://livecoins.com.br/wp-content/uploads/2023/06/Meme-Pepe-com-vestuario-mostrando-vela-verde-de-grafico-de-precos-em-alta.jpg.webp"),
    Music(name: "teste 4", arti: "arti 4", link: "https://livecoins.com.br/wp-content/uploads/2023/06/Meme-Pepe-com-vestuario-mostrando-vela-verde-de-grafico-de-precos-em-alta.jpg.webp"),
    Music(name: "teste 5", arti: "arti 5", link: "https://livecoins.com.br/wp-content/uploads/2023/06/Meme-Pepe-com-vestuario-mostrando-vela-verde-de-grafico-de-precos-em-alta.jpg.webp"),
    Music(name: "teste 6", arti: "arti 6", link: "https://livecoins.com.br/wp-content/uploads/2023/06/Meme-Pepe-com-vestuario-mostrando-vela-verde-de-grafico-de-precos-em-alta.jpg.webp")
]

var arrayMusicScroll = [
    Music(name: "teste 4", arti: "arti 4", link: "https://livecoins.com.br/wp-content/uploads/2023/06/Meme-Pepe-com-vestuario-mostrando-vela-verde-de-grafico-de-precos-em-alta.jpg.webp"),
    Music(name: "teste 5", arti: "arti 5", link: "https://livecoins.com.br/wp-content/uploads/2023/06/Meme-Pepe-com-vestuario-mostrando-vela-verde-de-grafico-de-precos-em-alta.jpg.webp"),
    Music(name: "teste 6", arti: "arti 6", link: "https://livecoins.com.br/wp-content/uploads/2023/06/Meme-Pepe-com-vestuario-mostrando-vela-verde-de-grafico-de-precos-em-alta.jpg.webp"),
]





struct ContentView: View {
    var body: some View {
        
        let backgroundGradient = LinearGradient(
            colors: [Color.blue, Color.black],
            startPoint: .top, endPoint: .bottom)
        
        NavigationStack{
            ZStack
            {
                backgroundGradient
                
                ScrollView {
                    
                    VStack (spacing: 20)
                    {
                        
                        AsyncImage(url: URL(string: "https://livecoins.com.br/wp-content/uploads/2023/06/Meme-Pepe-com-vestuario-mostrando-vela-verde-de-grafico-de-precos-em-alta.jpg.webp")) { image in
                            image.resizable()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 300, height: 300)
                        
                        Text("Teste")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.trailing, 300.0)
                        
                        VStack (spacing: 20) {
                            
                            ForEach(arrayMusic) { i in
                                
                                NavigationLink(destination: MusicaDetalhe(x: i)){
                                    HStack{
                                        AsyncImage(url: URL(string: "\(i.link)"))
                                        { image in
                                            image.resizable()
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        .frame(width: 70, height: 70)
                                        
                                        VStack (spacing: 10){
                                            
                                            Text("\(i.name)")
                                                .foregroundColor(Color.white)
                                                .multilineTextAlignment(.leading)
                                                .padding(.trailing, 30.0)
                                                .lineLimit(1)
                                                .truncationMode(.middle)
                                            
                                            Text("\(i.arti)")
                                                .foregroundColor(Color.white)
                                                .multilineTextAlignment(.leading)
                                                .padding(.trailing, 30.0)
                                                .lineLimit(1)
                                                .truncationMode(.middle)
                                        }
                                        
                                        .padding(.trailing, 200.0)
                                    }
                                }
                            }
                            Text("Teste 2")
                                .font(.title)
                                .font(.title)
                                .foregroundColor(Color.white)
                                .padding(.trailing, 300.0)
                            
                            ScrollView(.horizontal , showsIndicators: false)
                            {
                                HStack(spacing: 10)
                                {
                                    ForEach(arrayMusicScroll) { music in
                                        AsyncImage(url: URL(string: "\(music.link)"))
                                        { image in
                                            image.resizable()
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        .frame(width: 200, height: 200)
                                    }
                                }
                                
                            }
                            
                        }
                    }
                }
            }
            .ignoresSafeArea()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
