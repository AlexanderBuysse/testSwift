//
//  pokemonTeam.swift
//  pokedex
//
//  Created by Alexander Buysse on 05/10/2021.
//

import SwiftUI
import Kingfisher


struct pokemonTeam: View {
    let columns = [
        GridItem(.adaptive(minimum: 110))
    ]
    @EnvironmentObject var team: Team
    var pokedex: Pokedex
    
    var body: some View {
        
        VStack {
            Button("print ids of pokemons in your team"){
                let newArray = self.team.pokemons
                print(self.team.pokemons)
                newArray.forEach { number in
                    print("dit werkt maar ik deze data precies nergens anders plaatsen")
                    KFImage(URL(string: pokedexs[number].img)!)
                }

            }
            LazyVGrid(columns: columns) {
            /*var list = [1, 2, 3]
                list.forEach { number in
                KFImage(URL(string: pokedexs[number].img)!)
 
            }*/
            KFImage(URL(string: pokedexs[20].img)!)
            KFImage(URL(string: pokedexs[30].img)!)
            KFImage(URL(string: pokedexs[90].img)!)
            KFImage(URL(string: pokedexs[100].img)!)
            KFImage(URL(string: pokedexs[43].img)!)
            KFImage(URL(string: pokedexs[150].img)!)
            
        }
        Spacer()
        }

    }
}

struct pokemonTeam_Previews: PreviewProvider {
    static var previews: some View {
        pokemonTeam(pokedex: pokedexs[0])
    }
}
