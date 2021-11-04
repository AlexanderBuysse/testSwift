//
//  ContentView.swift
//  pokedex
//
//  Created by Alexander Buysse on 01/10/2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var team = Team()
    @State private var selection: Tab = .home
    
    enum Tab {
        case home
        case team
    }
    var body: some View {
        TabView(selection: $selection) {
            pokedexList()
                .tabItem {
                    Label("Home", systemImage: "house")                                }
                .tag(Tab.home)
            pokemonTeam(pokedex: pokedexs[0])
                .tabItem {
                    Label("Team", systemImage: "person.3")
            }
            .tag(Tab.team)
        }
        .environmentObject(team)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
