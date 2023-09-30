//
//  TextoInfoDetalhe.swift
//  SaveMoney
//
//  Created by Student02 on 27/09/23.
//

import SwiftUI

struct TextoInfoDetalhe: View
{
    var x : ListItem
    
    var body: some View
    {
        ZStack()
        {
            VStack(spacing: 20)
            {
                ScrollView()
                {
                Image("ImgTelaP5")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                
                Spacer()
                
                    ForEach(x.topic!, id: \.self) { i in
                        VStack(spacing: 10)
                        {
                            if(i.nome != nil){
                                Text(i.nome!)
                                    .font(.title)
                                    .multilineTextAlignment(.center)
                                    .padding(10.0)
                                    
                                
                            }
                            if(i.desc != nil){
                                Text(i.desc!)
                                    .font(.title3)
                                    .multilineTextAlignment(.center)
                                    .padding(10.0)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 20).stroke(Color("ColorApp"))
                                    )

                            }
                        }
                    }
                }
                
                Spacer()
            }
        }
    }
}

struct TextoInfoDetalhe_Previews: PreviewProvider {
    static var previews: some View {
        TextoInfoDetalhe(x: ListItem(_id: "", _rev: "", List: "", topic: [Topic(nome: "", desc:"")]))
    }
}
