//
//  Noticias.swift
//  SaveMoney
//
//  Created by Student02 on 26/09/23.
//

import SwiftUI
import UIKit

struct Noticias: View {
    
    @StateObject var viewModel = ViewModel()
    
    @StateObject var viewModel1 = ViewModel3()
    
    var body: some View {
        ZStack()
        {
            VStack
            {
                ScrollView
                {
                    Spacer()
                    
                    Image("ImgTelaDeNews")
                        .renderingMode(.original)
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250.0, height: 250.0)
                        
                    Spacer()
                    
                    ForEach(viewModel.conteudo, id: \.uuid){ i in
                        
                        VStack(spacing: 30)
                        {
                            Text(i.title!)
                                    .font(.title)
                                    .multilineTextAlignment(.center)
                                    .padding(10.0)
                            
                            Text(i.description!)
                                .multilineTextAlignment(.center)
                                
                            AsyncImage(url: URL(string: "\(i.image_url!)"))
                            { image in
                                image.resizable()
                            } placeholder: {
                               ProgressView()
                            }
                            .frame(width: 300, height: 200)
                            
                            (Text(Image(systemName: "link")) + Text(" \(i.source!)"))
                                .foregroundStyle(.blue)
                                .font(.title)
                                .onTapGesture {
                                    openURL(URL(string: "\(i.url!)"))
                                }
                        }
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 16).stroke(Color("ColorApp"), lineWidth: 4)
                        )
                        
                        
                    }
                    Spacer()
                    
                    ForEach(viewModel1.conteudo3, id: \.uuid){ i in
                        
                        VStack(spacing: 30)
                        {
                            Text(i.title!)
                                    .font(.title)
                                    .multilineTextAlignment(.center)
                                    .padding(10.0)
                            
                            Text(i.description!)
                                .multilineTextAlignment(.center)
                                
                            AsyncImage(url: URL(string: "\(i.image_url!)"))
                            { image in
                                image.resizable()
                            } placeholder: {
                               ProgressView()
                            }
                            .frame(width: 300, height: 200)
                            
                            (Text(Image(systemName: "link")) + Text(" \(i.source!)"))
                                .foregroundStyle(.blue)
                                .font(.title)
                                .onTapGesture {
                                    openURL(URL(string: "\(i.url!)"))
                                }
                        }
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 16).stroke(Color("ColorApp"), lineWidth: 4)
                        )
                        
                        
                    }
                }
            }
            .onAppear(){
                viewModel.fetch()
                viewModel1.fetch()
            }
        }
    }
    
    func openURL(_ url: URL?) {
            guard let url = url else { return }

            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
}

struct Noticias_Previews: PreviewProvider {
    static var previews: some View {
        Noticias()
    }
}
