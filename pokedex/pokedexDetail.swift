//
//  pokedexDetail.swift
//  pokedex
//
//  Created by Alexander Buysse on 01/10/2021.
//

import Kingfisher
import SwiftUI

struct pokedexDetail: View {
    @EnvironmentObject var team: Team
    var pokedex: Pokedex

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(pokedex.name)
                    .font(.title)

                Divider()
                HStack{
                    KFImage(URL(string: pokedex.img)!)
                        .shadow(radius: 7)
                    .frame(width: 100.0,height:100)
                    VStack {
                        Text(pokedex.weight)
                        Text(pokedex.height)
                    }
                }

            }
            .padding()
        }
        .navigationTitle(pokedex.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct pokedexDetail_Previews: PreviewProvider {
    static var previews: some View {
        pokedexDetail(pokedex: pokedexs[0])
    }
}
