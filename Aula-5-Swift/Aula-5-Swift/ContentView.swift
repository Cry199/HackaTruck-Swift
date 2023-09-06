//
//  ContentView.swift
//  Aula-5-Swift
//
//  Created by Student02 on 06/09/23.
//

import SwiftUI
import Foundation
import MapKit

struct Location: Identifiable
{
    let id = UUID();
    let name: String;
    let coordinate: CLLocationCoordinate2D;
    let flag: String;
    let description: String;
}


var arrayLoation = [
    Location(name: "São Paulo",
             coordinate: CLLocationCoordinate2D(latitude: -23.5489, longitude: -46.6388),
             flag: "https://i.imgur.com/azIVUi3.jpeg",
             description: "With the Pepe (PEPE) cryptocurrency rapidly gaining attention, it has emerged that the individual behind the coin’s associated meme was not aware of the digital asset’s existence. In particular, Matt Furie, creator of the legendary Pepe the Frog meme, has admitted lack of knowledge about Pepe despite the token’s recent surge in popularity across the cryptocurrency space, he said in a Twitter Space on May 9. "),
    Location(name: "Dallas, TX, the US",
             coordinate: CLLocationCoordinate2D(latitude: 32.779167, longitude:  -96.808891),
             flag:"https://finbold.com/app/uploads/2023/05/Pepe-the-Frog-meme-creator-unaware-of-PEPE-coin-prefers-DOGE.jpg",
             description: "With the Pepe (PEPE) cryptocurrency rapidly gaining attention, it has emerged that the individual behind the coin’s associated meme was not aware of the digital asset’s existence. In particular, Matt Furie, creator of the legendary Pepe the Frog meme, has admitted lack of knowledge about Pepe despite the token’s recent surge in popularity across the cryptocurrency space, he said in a Twitter Space on May 9. "),
    Location(name: "Teste 1",
             coordinate: CLLocationCoordinate2D(latitude: -23.5489, longitude: -46.6388),
             flag: "https://i.imgur.com/azIVUi3.jpeg",
             description: "With the Pepe (PEPE) cryptocurrency rapidly gaining attention, it has emerged that the individual behind the coin’s associated meme was not aware of the digital asset’s existence. In particular, Matt Furie, creator of the legendary Pepe the Frog meme, has admitted lack of knowledge about Pepe despite the token’s recent surge in popularity across the cryptocurrency space, he said in a Twitter Space on May 9. "),
    Location(name: "Teste 2",
             coordinate: CLLocationCoordinate2D(latitude: 32.779167, longitude:  -96.808891),
             flag:"https://finbold.com/app/uploads/2023/05/Pepe-the-Frog-meme-creator-unaware-of-PEPE-coin-prefers-DOGE.jpg",
             description: "With the Pepe (PEPE) cryptocurrency rapidly gaining attention, it has emerged that the individual behind the coin’s associated meme was not aware of the digital asset’s existence. In particular, Matt Furie, creator of the legendary Pepe the Frog meme, has admitted lack of knowledge about Pepe despite the token’s recent surge in popularity across the cryptocurrency space, he said in a Twitter Space on May 9."),
]


struct ContentView: View
{
    
    let backgroundGradient = LinearGradient(
        colors: [Color.white, Color.black], startPoint: .top, endPoint: .bottom)
    
    
    @State private var region = MKCoordinateRegion(
        center:  CLLocationCoordinate2D(
            latitude: 40.83834587046632,
            longitude: 14.254053016537693),
        span: MKCoordinateSpan(
            latitudeDelta: 1,
            longitudeDelta: 1))
    
    @State private var textTop = ""
    
    @State private var imgMap = ""
    
    @State private var showingSheet = false
    
    @State private var infoo =  Location(name: "",
    coordinate: CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0),
    flag: "", description: "")
    
    var body: some View
    {
        ZStack
        {
            backgroundGradient.ignoresSafeArea()
            
            VStack (spacing: 20)
            {
                Spacer()
                
                Text("World Map")
                    .font(.title)
                
                Text("\(infoo.name)")
                    .font(.title)
                
                Map(coordinateRegion: $region,
                    annotationItems: arrayLoation){ i in
                    MapAnnotation(coordinate: i.coordinate){
                        Circle()
                        .frame(width: 30, height: 30)
                        .onTapGesture {
                            showingSheet.toggle()
                        }
                        .sheet(isPresented: $showingSheet)
                        {
                            info(x: infoo)
                        }
                    }
                }
                .frame(width: 400,height: 600)
                
                ScrollView(.horizontal , showsIndicators: false)
                {
                    HStack(spacing: 20)
                    {
                        ForEach(arrayLoation) { i in
                            
                            Button("\(i.name)") {
                                infoo = i
                                region.center = i.coordinate
                            }
                        }
                    }
                    .padding()
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider
    {
        static var previews: some View
        {
            ContentView()
        }
    }
}
