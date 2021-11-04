//
//  pokedexList.swift
//  pokedex
//
//  Created by Alexander Buysse on 01/10/2021.
//

import SwiftUI

struct pokedexList: View {
   // @ObservedObject var team = Team()
    @EnvironmentObject var team: Team
    let columns = [
        GridItem(.adaptive(minimum: 110))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: columns) {
                ForEach(pokedexs, id: \.self) { pokedex in
                    NavigationLink(destination:
                                    pokedexDetail(pokedex: pokedex)){
                        pokedexRow(pokedex: pokedex)
                    }
                    .environmentObject(team)
                }

            }
                .padding(.leading, 20)

                // right padding
                .padding(.trailing, 20)
            }.navigationTitle("Choose your team")
        }
        
    }
}

/*
 struct LandmarkList: View {
var body: some View {
    NavigationView {
        List(landmarks) { landmark in
            NavigationLink(destination: Detail(landmark: landmark)) {
                LandmarkRow(landmark: landmark)
            }
        }
        .navigationTitle("Landmarks")
    }
}
}
*/

struct pokedexList_Previews: PreviewProvider {
    static var previews: some View {
        pokedexList()
    }
}
