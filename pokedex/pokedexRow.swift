//
//  pokedexRow.swift
//  pokedex
//
//  Created by Alexander Buysse on 01/10/2021.
//

import SwiftUI
import Kingfisher
import UIKit

struct pokedexRow: View {
    @EnvironmentObject var team: Team
    var pokedex: Pokedex

    var body: some View {
        VStack {
            HStack{
                Text(pokedex.name) .foregroundColor(Color(red: 0.4627, green: 0.8392, blue: 1.0))
                Button(team.contains(pokedex) ? "remove from team": "add to team"){
                    if self.team.contains(self.pokedex) {
                        self.team.remove(pokedex.id)
                        print(self.team.pokemons)
                    } else {
                        //self.team.add(self.team)
                        self.team.add(pokedex.id)
                        print(self.team.pokemons)
                    }
    
                }
                
            }
            Spacer()
            KFImage(URL(string: pokedex.img)!)
            .frame(width: 100.0,height:100)
        }
        .padding()
        .background(Color.white)
        .shadow(radius: 7)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color(red: 0.4627, green: 0.8392, blue: 1.0), lineWidth: 4)
        )
        .cornerRadius(16)
    }
}

struct pokedexRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            pokedexRow(pokedex: pokedexs[0])
            pokedexRow(pokedex: pokedexs[1])
        }
        .previewLayout(.fixed(width: 300, height: 150))
    }
}
