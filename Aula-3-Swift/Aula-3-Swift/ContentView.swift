//
//  ContentView.swift
//  Aula-3-Swift
//
//  Created by Student02 on 04/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            D1()
                .badge(2)
                .tabItem {
                    Label("Received", systemImage: "tray.and.arrow.down.fill")
                }
            NavigationTStack()
                .tabItem {
                    Label("Teste", systemImage: "person.crop.circle.fill")
                }
            D2()
                .tabItem {
                    Label("Sent", systemImage: "tray.and.arrow.up.fill")
                }
            D5()
                .tabItem {
                    Label("ATeste", systemImage: "person.crop.circle.fill")
                }
            D3()
                .badge("!")
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
