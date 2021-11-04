//
//  Team.swift
//  pokedex
//
//  Created by Alexander Buysse on 05/10/2021.
//

import SwiftUI

class Team: ObservableObject {
    var pokemons: Set<Int>
    
    private let saveKey = "Team"
    
    init() {
        self.pokemons = []
    }
    
    func contains(_ pokemon: Pokedex) -> Bool {
        pokemons.contains(pokemon.id)
    }
    
    func add(_ pokemon: Int) {
        objectWillChange.send()
        pokemons.insert(pokemon)
        save()
    }
    
    func remove(_ pokemon: Int) {
        objectWillChange.send()
        pokemons.remove(pokemon)
        save()
    }
    
    func save () {
        //write out our data
    }
}
