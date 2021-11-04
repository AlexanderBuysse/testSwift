//
//  pokemonImage.swift
//  pokedex
//
//  Created by Alexander Buysse on 04/10/2021.
//

import SwiftUI
import Kingfisher

struct pokemonImage: View {
    var pokedex: Pokedex

    var body: some View {
            KFImage(URL(string: pokedex.img)!)
            .frame(width: 100.0,height:100)
        }
    }

struct pokemonImage_Previews: PreviewProvider {
    static var previews: some View {
        pokemonImage(pokedex: pokedexs[0])
    }
}
