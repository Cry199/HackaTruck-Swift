//
//  NavigationStackTela2.swift
//  Aula-3-Swift
//
//  Created by Student02 on 04/09/23.
//

import SwiftUI

class GameSettings: ObservableObject {
    @Published var score = ""
}
    
struct ScoreView: View {
    @EnvironmentObject var settings: GameSettings

    var body: some View {
        Text("Teste: \(settings.score)")
    }
}


struct NavigationStackTela2: View {
    
    @StateObject var settings = GameSettings()
    
    var body: some View {
        
        NavigationStack {
            VStack {
                
                TextField("Testo::", text: $settings.score)
                .multilineTextAlignment(.center)
                
                // A button that writes to the environment settings
                Button("Testo") {
                    settings.score
                }
                
                NavigationLink {
                    ScoreView()
                } label: {
                    Text("Show Detail View")
                }
            }
            .frame(height: 200)
        }
        .environmentObject(settings)
    }
}
struct NavigationStackTela2_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackTela2()
    }
}
